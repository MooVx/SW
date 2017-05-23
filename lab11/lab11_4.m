close all
clear all

img = zeros(11);

img(3,6)=1;

H=hough(img,'RhoResolution',0.1,'ThetaResolution',0.5);

Hab=houghAB(img);

figure(1);
subplot(1,3,1);
imshow(img,[]);
subplot(1,3,2);
imshow(H,[]);
subplot(1,3,3);
imshow(Hab,[]);

img(3,6)=1;
img(7,6)=1;
img(5,6)=1;

H=hough(img,'RhoResolution',0.1,'ThetaResolution',0.5);
Hab=houghAB(img);

figure(2);
subplot(1,3,1);
imshow(img,[]);
subplot(1,3,2);
imshow(H,[]);
subplot(1,3,3);
imshow(Hab,[]);

img(2,4)=1;
img(6,4)=1;
img(5,4)=1;

H=hough(img,'RhoResolution',0.1,'ThetaResolution',0.5);
Hab=houghAB(img);

figure(3);
subplot(1,3,1);
imshow(img,[]);
subplot(1,3,2);
imshow(H,[]);
subplot(1,3,3);
imshow(Hab,[]);
