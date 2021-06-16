import numpy as np

def Rz(theta):

return np.array([
[np.cos(theta),-np.sin(theta),0,0],
[np.sin(theta), np.cos(theta),0,0],
[0,0,1,0],
[0,0,0,1]

])