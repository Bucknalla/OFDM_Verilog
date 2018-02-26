import numpy as np
import commpy as cp
import matplotlib.pyplot as plt
import scipy.interpolate
import math
import functools

###################
#DEFINE QAM SCHEMES
###################

BPSK = 1
QAM4 = 4
QAM16 = 16

####################
#EXCEPTION DECORATOR
####################

def catch_exception(f):
    @functools.wraps(f)
    def func(*args, **kwargs):
        try:
            return f(*args, **kwargs)
        except Exception as e:
            print('Caught an exception in', f.__name__)
    return func

#######################
#BPSK MODULATION SCHEME
#######################

class Bpsk():
    def __init__(self):
        pass
    def modulate(self, bit):
        try:
            if bit[0] == 1:
                return 1+0j
            if bit[0] == 0:
                return -1+0j
        except Exception as e:
            raise e

################
#OFDM BASE CLASS
################

class Ofdm(Exception):

    ######################
    # INITALISE PARAMETERS
    ######################

    def __init__(self, K=64, CP=0.25, P=8, P_Value=3+3j, QAM=QAM16, SNRdb=25, debug=True):
        self.K = K # Number of OFDM subcarriers
        self.CP = K*CP # Length of the cyclic prefix: % of the block
        self.P = P # Number of pilot carriers per OFDM block
        self.P_Value = P_Value # The known value each pilot transmits
        self.mu = QAM # Number of bits per symbol (i.e. 16QAM)
        self.SNRdb = SNRdb  # Signal to Noise-ratio in dB at the receiver 

        self.debug = debug

    ################
    # START TRANSMIT
    ################

    def TX(self):
        self.generate_carriers()
        self.generate_symbols()
        self.model_rf_channel()
        self.generate_bitstream()
        self.serial_to_parallel()
        self.map_bits_to_symbols()
        self.allocate_OFDM_symbols()
        self.IFFT()
        self.apply_cyclic_prefix()
        self.simulate_channel()

    ################################
    # GENERATE PILOT & DATA CARRIERS
    ################################

    @catch_exception
    def generate_carriers(self):
        self.allCarriers = np.arange(self.K)  # indices of all subcarriers ([0, 1, ... K-1])
        self.pilotCarriers = self.allCarriers[::self.K//self.P] # Pilots is every (K/P)th carrier.
        self.pilotCarriers = np.hstack([self.pilotCarriers, np.array([self.allCarriers[-1]])]) # Make the last carriers also pilots
        self.P = self.P+1
        self.dataCarriers = np.delete(self.allCarriers, self.pilotCarriers) # All remaining carriers are data carriers

        if self.debug:
            print ("allCarriers:   %s" % self.allCarriers)
            print ("pilotCarriers: %s" % self.pilotCarriers)
            print ("dataCarriers:  %s" % self.dataCarriers)
            plt.figure(1,figsize=(8,0.8))
            plt.title('Carrier Distribution')
            plt.plot(self.pilotCarriers, np.zeros_like(self.pilotCarriers), 'bo', label='pilot')
            plt.plot(self.dataCarriers, np.zeros_like(self.dataCarriers), 'ro', label='data')
            plt.legend(fontsize=10, ncol=2)
            plt.xlim((-1,self.K)); plt.ylim((-0.1, 0.3))
            plt.xlabel('Carrier index')
            plt.yticks([])
            plt.grid(True)
            plt.show(block=False)

    ##############################################
    # GENERATE SYMBOL TABLE FROM MODULATION SCHEME
    ##############################################

    # @catch_exception
    def generate_symbols(self):
        log2mu = int(np.log2(self.mu))
        log2mu2 = (log2mu+2)
        # rootmu = int(math.sqrt(self.mu))
        self.payloadBits_per_OFDM = len(self.dataCarriers)*log2mu  # number of payload bits per OFDM symbol
        if self.mu == 2:
            self.mod = Bpsk()
        else:
            self.mod = cp.modulation.QAMModem(self.mu)

        if self.debug:
            plt.figure(2)
            plt.title("Constellation Diagram of QAM "+str(self.mu))
            grey_code_list = self.__grey_code(int(math.sqrt(self.mu)))
            for word in grey_code_list:
                print(word)
                symbol = self.mod.modulate(word)
                for each in symbol:
                    each = np.vectorize(each)
                print(symbol)
                plt.plot(symbol.real, symbol.imag, 'bo')
                plt.text(symbol.real, symbol.imag+0.2, "".join(str(x) for x in word), ha='center')
            plt.grid(True)
            plt.xlim((-(log2mu2), (log2mu2))); plt.ylim((-(log2mu2),(log2mu2))); plt.xlabel('Real part (I)'); plt.ylabel('Imaginary part (Q)')
            plt.show(block=False)

    # def generate_constellation(self):
    #     grey_code_list = self.__grey_code(int(math.sqrt(self.mu)))
    #     for word in grey_code_list:
    #         print(word)
    #         symbol = self.mod.modulate(word)
    #         for each in symbol:
    #             each = np.vectorize(each)
            
    def __grey_code(self, n):
        def grey_code_recurse(g, n):
            k = len(g)
            if n<=0:
                return
            else:
                for i in range (k-1, -1, -1):
                    char = '1'+g[i]
                    g.append(char)
                for i in range (k-1, -1, -1):
                    g[i] = '0'+g[i]
                grey_code_recurse (g, n-1)
        g = ['0', '1']
        grey_code_recurse(g,n-1)
        g_new = []
        for word in g:
            word_new = []
            for bit in word:
                word_new.append(int(bit))
            word_new = tuple(word_new)
            g_new.append(word_new)
        return g_new

    ########################
    # MODEL WIRELESS CHANNEL
    ########################

    @catch_exception
    def model_rf_channel(self):

        # Two tap multipath channel
        self.channelResponse = np.array([1, 0, 0.3+0.3j])  # the impulse response of the wireless channel
        self.H_exact = np.fft.fft(self.channelResponse, self.K)

        if self.debug:
            plt.figure(3)
            plt.title("Impulse Response of Channel")
            plt.plot(self.allCarriers, abs(self.H_exact))
            plt.xlabel('Subcarrier index'); plt.ylabel('$|H(f)|$'); plt.grid(True); plt.xlim(0, self.K-1)
            plt.show(block=False)

    ###########################
    # GENERATE RANDOM BITSTREAM
    ###########################

    @catch_exception
    def generate_bitstream(self):
        self.bits = np.random.binomial(n=1, p=0.5, size=(int(self.payloadBits_per_OFDM), ))

        if self.debug:
            print ("Bits count: ", len(self.bits))
            print ("First 20 bits: ", self.bits[:20])
            print ("Mean of bits (should be around 0.5): ", np.mean(self.bits))

    #################################
    # SERIAL-TO-PARALLEL CONVERT BITS
    #################################

    @catch_exception
    def serial_to_parallel(self):
        self.bits_SP = self.bits.reshape((len(self.dataCarriers), int(np.log2(self.mu))))

        if self.debug:
            print ("First 5 bit groups")
            print (self.bits_SP[:5,:])

    #########################
    # MAP BITS TO QAM SYMBOLS
    #########################

    @catch_exception
    def map_bits_to_symbols(self):
        self.QAM = np.array([self.mod.modulate(tuple(b)) for b in self.bits_SP])
        self.QAM = self.QAM.flatten()

        if self.debug:
            print ("First 5 QAM symbols and bits:")
            print (self.bits_SP[:5,:])
            print (self.QAM[:5])

    ##############################
    # ALLOCATE SYMBOLS TO CARRIERS
    ##############################

    @catch_exception
    def allocate_OFDM_symbols(self):
        self.symbol = np.zeros(self.K, dtype=complex) # the overall K subcarriers
        self.symbol[self.pilotCarriers] = self.P_Value  # allocate the pilot subcarriers 
        print(self.QAM)
        print(self.symbol)
        self.symbol[self.dataCarriers] = self.QAM  # allocate the pilot subcarriers
        self.OFDM_data = self.symbol

        if self.debug:
            print ("Number of OFDM carriers in frequency domain: ", len(self.OFDM_data))

    ###################################
    # CONVERT FREQ. BINS TO TIME DOMAIN
    ###################################

    @catch_exception
    def IFFT(self):
        self.OFDM_time = np.fft.ifft(self.OFDM_data)

        if self.debug:
            print ("Number of OFDM samples in time-domain before CP: ", len(self.OFDM_time))

    ###################
    # ADD CYCLIC PREFIX
    ###################

    @catch_exception
    def apply_cyclic_prefix(self):
        self.cp = self.OFDM_time[-(int(self.CP)):] # Take the last CP samples ...
        print(len(self.cp))
        self.OFDM_withCP = np.hstack([self.cp, self.OFDM_time]) # Add CP samples back to to the beginning
    
        if self.debug:
            print ("Number of OFDM samples in time domain with CP: ", len(self.OFDM_withCP))

    ######################################################
    # CONVOLUTE SIGNAL WITH CHANNEL RESPONSE & APPLY NOISE
    ######################################################

    @catch_exception
    def simulate_channel(self):
        convolved = np.convolve(self.OFDM_withCP, self.channelResponse)
        signal_power = np.mean(abs(convolved**2))
        sigma2 = signal_power * 10**(-self.SNRdb/10)  # calculate noise power based on signal power and SNR
        
        print ("RX Signal power: %.4f. Noise power: %.4f" % (signal_power, sigma2))
        
        # Generate complex noise with given variance
        noise = np.sqrt(sigma2/2) * (np.random.randn(*convolved.shape)+1j*np.random.randn(*convolved.shape))

        self.OFDM_TX = self.OFDM_withCP
        self.OFDM_RX = convolved + noise

        if self.debug:
            plt.figure(4,figsize=(8,2))
            plt.title('TX & RX Channels in Time Domain')
            plt.plot(abs(self.OFDM_TX), label='TX signal')
            plt.plot(abs(self.OFDM_RX), label='RX signal')
            plt.legend(fontsize=10)
            plt.xlabel('Time'); plt.ylabel('$|x(t)|$')
            plt.grid(True)
            plt.show()

    def RX(self):
        pass
    
    # def remove_cyclic_prefix(self):
    #     self.OFDM_RX_noCP = self.OFDM_RX[self.CP:(self.CP+self.K)]

    # def FFT(self):
    #     self.OFDM_demod = np.fft.fft(self.OFDM_RX_noCP)

    # def channelEstimate(self):
    #     self.pilots = self.OFDM_demod[self.pilotCarriers]  # extract the pilot values from the RX signal
    #     self.Hest_at_pilots = self.pilots / self.P_Value # divide by the transmitted pilot values
        
    #     # Perform interpolation between the pilot carriers to get an estimate
    #     # of the channel in the data carriers. Here, we interpolate absolute value and phase 
    #     # separately
    #     self.Hest_abs = scipy.interpolate.interp1d(self.pilotCarriers, abs(self.Hest_at_pilots), kind='linear')(self.allCarriers)
    #     self.Hest_phase = scipy.interpolate.interp1d(self.pilotCarriers, np.angle(self.Hest_at_pilots), kind='linear')(self.allCarriers)
    #     self.Hest = self.Hest_abs * np.exp(1j*self.Hest_phase)
    
    #     if self.debug:
    #         plt.figure(5)
    #         plt.plot(self.allCarriers, abs(self.H_exact), label='Correct Channel')
    #         plt.stem(self.pilotCarriers, abs(self.Hest_at_pilots), label='Pilot estimates')
    #         plt.plot(self.allCarriers, abs(self.Hest), label='Estimated channel via interpolation')
    #         plt.grid(True); plt.xlabel('Carrier index'); plt.ylabel('$|H(f)|$'); plt.legend(fontsize=10)
    #         plt.ylim(0,2)
    #         plt.show(block=False)

    # def equalize(self):
    #     self.equalized_Hest = self.OFDM_demod / self.Hest

    # def get_payload(self):
    #     self.QAM_est = self.equalized_Hest[self.dataCarriers]
    #     if self.debug:
    #         plt.plot(self.QAM_est.real, self.QAM_est.imag, 'bo')

    # def Demapping(self):
    #     # array of possible constellation points
    #     self.constellation = np.array([x for x in demapping_table.keys()]) # FIX THIS
        
    #     # calculate distance of each RX point to each possible point
    #     self.dists = abs(self.QAM_est.reshape((-1,1)) - self.constellation.reshape((1,-1)))
        
    #     # for each element in QAM, choose the index in constellation 
    #     # that belongs to the nearest constellation point
    #     self.const_index = self.dists.argmin(axis=1)
        
    #     # get back the real constellation point
    #     self.hardDecision = self.constellation[self.const_index]
        
    #     # transform the constellation point into the bit groups
    #     self.PS_est = np.vstack([demapping_table[C] for C in self.hardDecision])
        
    #     if self.debug:
    #         for qam, hard in zip(self.QAM_est, self.hardDecision):
    #             plt.plot([qam.real, hard.real], [qam.imag, hard.imag], 'b-o');
    #             plt.plot(self.hardDecision.real, self.hardDecision.imag, 'ro')

    # def PS(self):
    #     self.bits_est = self.PS_est.reshape((-1,))
    #     if self.debug:
    #         print("Obtained Bit error rate: ", np.sum(abs(self.bits-self.bits_est))/len(self.bits))
