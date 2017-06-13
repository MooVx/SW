close all;
clear all;

img=imread('lenaRGBSzumKolor.bmp');

imgR=img(:,:,1);
imgG=img(:,:,2);
imgB=img(:,:,3);


imgR_s=medfilt2(imgR);

imgG_s=medfilt2(imgG);

imgB_s=medfilt2(imgB);


imgEQ=img;
imgEQ(:,:,1)=imgR_s;
imgEQ(:,:,2)=imgG_s;
imgEQ(:,:,3)=imgB_s;

figure
subplot(1,2,1);
imshow(img);
title('org');
subplot(1,2,2);
imshow(imgEQ,[]);
title('EQ');

img=rgb2hsv(img);

imgH=img(:,:,1);
imgS=img(:,:,2);
imgV=img(:,:,3);

imgH_s=medfilt2(imgH);
imgS_s=medfilt2(imgS);
imgV_s=medfilt2(imgV);

imgEQ=img;
imgEQ(:,:,1)=imgH_s;
imgEQ(:,:,2)=imgS_s;
imgEQ(:,:,3)=imgV_s;

imgEQ=hsv2rgb(imgEQ);
img=hsv2rgb(img);
figure
subplot(1,2,1)
imshow(img);
title('org');
subplot(1,2,2);
imshow(imgEQ,[]);
title('EQ HSV');
