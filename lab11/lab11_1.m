close all
clear all

img = zeros(11);

img(3,6)=1;

H=hough(img,'RhoResolution',0.1,'ThetaResolution',0.5);

figure(1);
subplot(1,2,1);
imshow(img,[]);
subplot(1,2,2);
imshow(H,[]);


img(3,6)=1;
img(7,6)=1;
img(5,6)=1;

H=hough(img,'RhoResolution',0.1,'ThetaResolution',0.5);

figure(2);
subplot(1,2,1);
imshow(img,[]);
subplot(1,2,2);
imshow(H,[]);
