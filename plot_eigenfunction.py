import numpy as np
import matplotlib.pyplot as plt

data = np.loadtxt("wavefunctions.dat", comments="#")

x = data[:,0]
psi1 = data[:,1]
psi2 = data[:,2]
psi3 = data[:,3]

plt.plot(x, psi1, label="n=1")
plt.plot(x, psi2, label="n=2")
plt.plot(x, psi3, label="n=3")

plt.xlabel("x")
plt.ylabel("psi(x)")
plt.legend()

plt.show()
