close all;
clear all;

img=imread('wiener_motion_noisy.png');

img=im2double(img);
psf=fspecial('motion', 15, 0);

figure 
subplot(1,3,1)
imgshow(deconvwnr(img,


