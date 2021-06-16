import cv2 as cv
import numpy as np
img = cv.imread("car.jpeg",cv.IMREAD_GRAYSCALE)
print(img.shape)

filter = np.array([
    [1,1,1],
    [1,1,1],
    [1,1,1]
])

filter2 = np.array([
    [-1,0,1],
    [-2,0,2],
    [-1,0,1]
])


k = 3

#new_img = np.zeros_like(img)
#for i in range(img.shape[0] -2):
#    for j in range(img.shape[1]-2):
#        patch = img[i:i+k,j:j+k]
#        result = filter * patch
#        result = [result[:,:,0].mean(), result[:,:,1].mean(),result[:,:,2].mean()]
#        new_img[i,j]=result

new_img2 = np.zeros_like(img)
for i in range(img.shape[0] -2):
    for j in range(img.shape[1]-2):
         patch = img[i:i+k,j:j+k]
         Gx = (filter2*patch).sum()
         Gy = (filter2.T*patch).sum()
         G=np.sqrt(Gx**2 + Gy**2)
         new_img2[i,j] = G

#img = img[:,:]
cv.imshow("Car Display Window", new_img2)
cv.waitKey(0)