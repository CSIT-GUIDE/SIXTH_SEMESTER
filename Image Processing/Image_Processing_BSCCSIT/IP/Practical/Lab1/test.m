a = imread('/home/linuxsagar/Desktop/IP/Practical/Lab1/lena512.bmp');

subplot(2,2,1);
imshow(a);

b = flipud(a);
subplot(2,2,2);
imshow(b);

c = fliplr(a);
subplot(2,2,3)
imshow(c);