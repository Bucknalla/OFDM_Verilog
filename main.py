from ofdm import Ofdm
import numpy as np
import commpy as cp

tx = Ofdm(QAM=2,debug=True)

# mod = cp.modulation.PSKModem(2)
# print(mod.modulate([1,0]))

tx.TX()