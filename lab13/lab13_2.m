close all;
clear all;

load inv_filter


psf=fspecial('disk', 10);
inv_G=fft2(inv_filter,256,256);
PSF=fft2(psf,256,256);

img_ideal=abs(ifft2(inv_G./PSF));
figure
subplot(1,2,1)
imshow(inv_filter,[]);
subplot(1,2,2)
imshow(img_ideal);