"""

"""


import numpy as np
import cv2
from matplotlib import pyplot as plt


from scipy.misc import toimage, fromimage
from scipy.misc.pilutil import Image
from skimage.morphology import skeletonize
from skimage.util import img_as_ubyte
"""
#
#a = Image.open('000004.jpg').convert('L')
#
##a = cv2.imread('000004.jpg',1)
#'''
#normalization
#'''
##invert image
#temp=np.array(a);
##temp=255-temp;
#temp=temp/np.max(a)
#
#
##temp=temp/255


#ret2,th2 = cv2.threshold(temp,0,255,cv2.THRESH_BINARY+cv2.THRESH_OTSU)
"""


im=cv2.imread('000004.jpg',0);
ret2,th2 = cv2.threshold(im,0,255,cv2.THRESH_BINARY+cv2.THRESH_OTSU)
th2=255-th2;
th2=th2/np.max(th2);

cv2.imshow('',th2)
b = skeletonize(th2)
#
plt.imshow(b)
#

cv2.waitKey(0)
cv2.destroyAllWindows()

