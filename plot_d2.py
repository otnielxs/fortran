import numpy as np
import matplotlib.pyplot as plt

data = np.loadtxt("d2_test.dat", comments="#")

x = data[:,0]
num = data[:,1]
exact = data[:,2]

plt.plot(x, num, label="Numerical")
plt.plot(x, exact, "--", label="Exact")

plt.xlabel("x")
plt.ylabel("Second Derivative")
plt.legend()

plt.show()
