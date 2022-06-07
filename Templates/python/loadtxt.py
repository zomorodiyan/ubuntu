'''
 1 2 3 garbage garbage
 2 0 0 garbage
 garbage
'''
import numpy as np
mat = np.loadtxt('loadtxt.py',skiprows=1, max_rows=2, usecols=range(3))
print(mat)
