import numpy as np
import matplotlib.pyplot as plt

data = np.loadtxt("oscillator.dat")

t = data[:, 0]
x = data[:, 1]
ylim = (0, 10)
xlim = (0, 10)
plt.plot(t, x)
plt.xlabel("Time")
plt.ylabel("Position")
plt.title("Simple Harmonic Oscillator")
plt.grid(False)
plt.show()
