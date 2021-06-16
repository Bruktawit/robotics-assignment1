import numpy as np
import tinyik as ik
def Rx(r):
     return np.array(
       [1 , 0,0,0],
       [np.cos(r) , -np.sin(r),0,0],
       [np.sin(r) , np.cos(r),0,0],
       [0 , 0,1,0]
   )

R=Rx(np.radians(20))
print(R)
def Rz(r):
     return np.array(
       [np.cos(r) , -np.sin(r),0,0],
       [np.sin(r) , np.cos(r),0,0],
       [0 , 0,1,0],
       [0 , 0,1,0]
   )
def Tz(d):

     return np.array(
       [1 , 0,0,0],
       [0 , 1,0,0],
       [0 , 0,1,d],
       [0 , 0,0,1]
   )

M1=Tz(0.1)
M2=Rz(np.radians(60)).dot(Tz(0.05))
M3=Rx(np.radians(30)).dot(Tz(2.0))
M4=Rx(np.radians(-90)).dot(Tz(1.0))
M5=Rx(np.radians(-30)).dot(Tz(1.0))
# M=(((M1.dot(M2)).dot(M3)).dot(M4)).dot(M5)
mats=[M1,M2,M3,M4,M5]
M=M1
for i in range(1,len(mats)):
    M=M.dot(mat[i])
print(M)
# M1 = np.array([1 , 0,0,0],
#        [0 , 1,0,0],
#        [0 , 0,1,4],
#        [4 , 0,0,1])

# M2=np.array(
#        [1 ,2,0,0],
#        [0 , 1,0,0],
#        [0 , 0,1,3],
#        [0 , 0,0,1])
# R=M1.dot(M2)
# print(R)

arm=ik.Actuator([
    'z',[0,0,.15],
    'x',[0,0,2.0],
    'x',[0,0,1.0],
    'x',[0,0,1.0],
])
arm.ee=[1.0,1.0,1.0]
print(arm.angels)