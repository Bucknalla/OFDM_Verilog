import matplotlib.pyplot as plt
import numpy as np

t = np.arange(400)
n = np.zeros((400,), dtype=complex)
# n[40:60] = np.exp(1j*(2*np.pi))
n[20:25] = np.exp(0)
n[60:90] = np.exp(1)

print(n)
s = np.fft.ifft(n)
# plt.plot(t, s.real, 'b-', t, s.imag, 'r--')
s = np.fft.fft(s)

plt.plot(t, s.real, 'b-', t, s.imag, 'r--')
plt.legend(('real', 'imaginary'))
plt.show()