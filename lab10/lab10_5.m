close all;
clear all;


literki = imread('literki.bmp');
wzr=imread('wzorA.bmp');
f_w = fft2(rot90(wzr,2),256,256);
ff_w=fftshift(f_w);


f_l=fft2(literki);
ff_l=fftshift(f_l);
mux=ff_l.*ff_w;

img_mux=ifft2(ifftshift(mux));

SE = strel('square',3);

hot=imtophat(img_mux,SE);

imshow(hot,[]);


figure(1);
subplot(1,2,1);
imshow(literki,[]);
title('img');
subplot(1,2,2);
imshow(hot,[]);
% mesh(A);
title('hot');






