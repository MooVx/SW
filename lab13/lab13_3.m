close all;
clear all;

load inv_filter_noisy


psf=fspecial('disk', 10);
inv_G=fft2(inv_filter_noisy,256,256);
PSF=fft2(psf,256,256);

img_ideal=abs(ifft2(inv_G./PSF));
figure
subplot(1,2,1)
imshow(inv_filter_noisy,[]);
subplot(1,2,2)
imshow(img_ideal,[]);
figure 
surf(fftshift(abs(PSF))) 
shading interp

FN=inv_G./PSF;
FN(abs(PSF) < 0.01) = 0;
img_ideal=abs(ifft2(FN));
figure
subplot(1,2,1)
imshow(inv_filter_noisy,[]);
subplot(1,2,2)
imshow(img_ideal);
