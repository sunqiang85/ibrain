import cv2
img = cv2.imread("lenna.jpg")
cv2.namedWindow('image', cv2.WINDOW_NORMAL)#给显示的窗口命名,后面的flag默认为cv2.WINDOW_AUTOSIZE,自动调整边框
#,但是在条形图过长时,使用windownormal我们可以自行调整边框
cv2.imshow('image',img)#展示图片
cv2.waitKey(0)#等待按键按下
cv2.destroyAllWindows()#清除所有窗口
