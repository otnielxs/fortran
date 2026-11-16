import numpy as np
import matplotlib.pyplot as plt

data = np.loadtxt("d2sin.dat", comments="#")

x = data[:, 0]
d2_num = data[:, 2]
d2_exact = data[:, 3]

plt.plot(x, d2_num, label="Numerical value")
plt.plot(x, d2_exact, label="Exact value")

plt.xlabel("x")
plt.ylabel("d$^2$f/dx$^2$")

plt.legend()
plt.show()
