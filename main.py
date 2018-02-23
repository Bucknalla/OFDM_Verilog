from ofdm import Ofdm
import commpy as cp

# tx = Ofdm(QAM=16,debug=True)
mod = cp.modulation.PSKModem(2)

print(mod.modulate([1,0,1,0,1,0,1,0,1,1,1,0,0]))


# tx.TX()