close all;
clear all;

img=imread('jezioro.jpg');
imgR=img(:,:,1);
imgG=img(:,:,2);
imgB=img(:,:,3);

figure
subplot(1,3,1)
imhist(imgR);
title('R');
subplot(1,3,2)
imhist(imgG);
title('G');
subplot(1,3,3)
imhist(imgB);
title('B');

imgEQ=img;
imgEQ(:,:,1)=histeq(imgR,256);
imgEQ(:,:,2)=histeq(imgG,256);
imgEQ(:,:,3)=histeq(imgB,256);

figure
subplot(1,2,1)
imshow(img);
title('org');
subplot(1,2,2)
imshow(imgEQ);
title('EQ');

imgHSV=rgb2hsv(img);
imgHSV_EQ(:,:,1)=histeq(imgHSV(:,:,1),256);
imgHSV_EQ(:,:,2)=histeq(imgHSV(:,:,2),256);
imgHSV_EQ(:,:,3)=histeq(imgHSV(:,:,3),256);
imgHSV_EQ=hsv2rgb(imgHSV_EQ);

figure
subplot(1,2,1)
imshow(img);
title('org');
subplot(1,2,2)
imshow(imgHSV_EQ,[]);
title('HSV EQ');


imgHSV=rgb2hsv(img);
imgHSV_EQ=imgHSV;
imgHSV_EQ(:,:,3)=histeq(imgHSV(:,:,3),256);
imgHSV_EQ_RGB=hsv2rgb(imgHSV_EQ);

figure
subplot(1,2,1)
imshow(img);
title('org');
subplot(1,2,2)
imshow(imgHSV_EQ_RGB,[]);
title('HSV EQ - V');


