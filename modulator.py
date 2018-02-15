import os, sys, math
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
        plt.show()

    def open_bitstream(self, file):
        try:
            filename, ext = os.path.splitext(file)
            if(ext != ".bin"):
                raise Exception
            bitstream = open(file, "r")
            symbol_stream = open("temp","w") 
            for bits in self.read_bits(bitstream):
                data = self.generate_symbols(bits)
                self.load_symbol_stream(symbol_stream,str(data))
                print(data)
                if self.draw:
                    self.add_plot(data)
            if self.draw:
                self.draw_plot()

        except OSError as err:
            print("OS error: {0}".format(err))
        except ValueError:
            print("Could not read data to binary format.")
        # except Exception:
        #     print("Incorrect file type.")
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
        return self.modulator.modulate(bits)

    def load_symbol_stream(self,file,data):
        file.write(data)
        
class serial_parallel:
    def __init__(self, width=8):
        self.width = width
        self.para_file = open("para", "w")

    def parallelise_data(self,temp_file):
        self.rw_symbols(temp_file, self.para_file)
    
    def rw_symbols(self, temp_file, para_file):
        while True:
            data = temp_file.read(self.width)
            if not data:
                break
            para_file.write(data+"\n")

        
mod = modulator()
ser = serial_parallel()
mod.open_bitstream("test.bin")
# ser.parallelise_data("temp")

while True:
    if plt.get_fignums():
        pass
    else:
        os.remove("temp")
        os.remove("para")
        break