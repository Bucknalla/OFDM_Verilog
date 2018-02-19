import os, sys, math, string
import pickle
import numpy as np
import commpy as cp
import matplotlib.pyplot as plt


BPSK = 2
QAM = 4
QAM8 = 8
QAM16 = 16

class modulator:
    def __init__(self,scheme=QAM,draw=True):
        self.scheme = scheme
        self.modulator = cp.modulation.QAMModem(self.scheme)
        self.draw = draw
        if self.draw:
            self.create_plot()

    def create_plot(self):
        fig = plt.figure()
        ax = fig.add_subplot(1, 1, 1)

        # Move left y-axis and bottim x-axis to centre, passing through (0,0)
        ax.spines['left'].set_position('center')
        ax.spines['bottom'].set_position('center')

        # Eliminate upper and right axes
        ax.spines['right'].set_color('none')
        ax.spines['top'].set_color('none')

        # Set limits
        ax.set_xlim([-2,2])
        ax.set_ylim([-2,2])

        # Show ticks in the left and lower axes only
        ax.xaxis.set_ticks_position('bottom')
        ax.yaxis.set_ticks_position('left')
    
    def add_plot(self, data):
        plt.plot([data.real],[data.imag],'ro-',label='python')

    def draw_plot(self):
        plt.draw()

    def open_bitstream(self, file):
        try:
            filename, ext = os.path.splitext(file)
            if(ext != ".bin"):
                raise Exception
            bitstream = open(file, "r")
            data_array = np.array([])
            symbol_stream = open("tmp.bin", "wb")
            for bits in self.read_bits(bitstream):
                data = self.generate_symbols(bits)
                # symbol_stream.write(str(data)+" ")
                data_array = np.append(data_array,data)
                if self.draw:
                    self.add_plot(data)
            print(data_array)
            # symbol_stream.close()
            data_array.tofile(symbol_stream)

            symbol_stream.close()
            symbol_stream = open("tmp.bin", "rb")

            test = np.fromfile(symbol_stream,dtype=complex)
            print(test)

            print(".tmp closed")
            if self.draw:
                self.draw_plot()
        except OSError as err:
            print("OS error: {0}".format(err))
        except ValueError:
            print("Could not read data to binary format.")
        except Exception:
            print("Incorrect file type.")
        except:
            print("Unexpected error:", sys.exc_info()[0])
            raise
    
    def read_bits(self, bitstream):
        while True:
            a = []
            bits = bitstream.read(int(math.log(self.scheme,2)))
            if not bits:
                break
            for bit in bits:
                a.append(int(bit))
            yield a

    def generate_symbols(self, bits):
        return self.modulator.modulate(bits)[0]
        
class serial_parallel:
    def __init__(self, width=1):
        self.width = width
        self.para_file = open(".par", "w")
        print("Opening .tmp")

    def parallelise_data(self):
        self.read_symbols()            
        self.para_file.close()

    def read_symbols(self):
        cnt = 0
        data = ""
        newline = ""

        with open(".tmp") as t:
            for data in t.read():
                if data == " ":
                    cnt += 1
                else:
                    newline += data
                if cnt >= self.width:
                    self.para_file.write(str(newline)+"\n")
                    newline = ""
                    cnt = 0
            t.close()

class ifft():
    def __init__(self,width=64):
        self.width = width
        self.para_file = open(".par", "r")


    def ifft(self):
        self.generate_array()
    
    def generate_array(self):
        ifft_store = []
        ifft_mod_store = []
        ifft_array = np.array()
        # for symbol in range(0,self.width):
        with open(".par", "r") as f:
            for i, c in enumerate(f):
                ifft_store.append(c)
                ifft_mod_store.append("")
                ifft_value = np.array(c.strip("\n"))
                # print(ifft_value)
                dot = False
                for a, x in enumerate(ifft_store[i].strip("\n")):
                    # print(ifft_store[i])
                    if dot and x is "-":
                        dot = False
                    elif x is ".":
                        dot = True
                        x = x.replace('.', '')
                    x = x.replace('[','')
                    x = x.replace(']','')

                    ifft_mod_store[i] += x
                np.append(ifft_array,ifft_value)
            print(ifft_array)


            # for each in ifft_mod_store:
            #     each = complex(each)
            #     each = np.array([each])
            #     # print(each)
            #     np.append(ifft_array,each)

            # print(element+"=")
            # 
                # print(ifft_array)


        
mod = modulator()
mod.open_bitstream("test.bin")
ser = serial_parallel()
ser.parallelise_data()
# ifft = ifft()
# ifft.ifft()

plt.show()

while True:
    if plt.get_fignums():
        pass
    else:
        # os.remove(".tmp")
        # os.remove(".par")
        break