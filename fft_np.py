import numpy as np
import matplotlib.pyplot as plt

signal = np.array([1, 0, 1, 0,1, 0, 1, 0,1, 0, 1, 0,1, 0, 1, 0,1, 0, 1, 0,1, 0, 1, 0,1, 0, 1, 0,1], dtype=float)
fourier = np.fft.fft(signal)
n = signal.size
t = np.arange(signal.size)
timestep = 0.1
freq = np.fft.fftfreq(n, d=timestep)
print(freq)

plt.plot(t, freq)
plt.show()