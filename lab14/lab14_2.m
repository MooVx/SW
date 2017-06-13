close all;
clear all;

img=imread('lenaRGB.bmp');

load maskiPP;

imgR=img(:,:,1);
imgG=img(:,:,2);
imgB=img(:,:,3);

imgR_s1=conv2(double(imgR),S1,'same');
imgR_s2=conv2(double(imgR),S2,'same');
imgR_s=(abs(imgR_s1) +abs(imgR_s2));

imgG_s1=conv2(double(imgG),S1,'same');
imgG_s2=conv2(double(imgG),S2,'same');
imgG_s=(abs(imgG_s1) +abs(imgG_s2));


imgB_s1=conv2(double(imgB),S1,'same');
imgB_s2=conv2(double(imgB),S2,'same');
imgB_s=(abs(imgB_s1) +abs(imgB_s2));


imgEQ=img;
imgEQ(:,:,1)=imgR_s;
imgEQ(:,:,2)=imgG_s;
imgEQ(:,:,3)=imgB_s;

figure
subplot(1,3,1);
imshow(img);
title('org');
subplot(1,3,2);
imshow(imgEQ,[]);
title('EQ');
subplot(1,3,3);
imshow(imgR_s+imgG_s+imgB_s,[]);
title('sum');

img=rgb2hsv(img);

imgH=img(:,:,1);
imgS=img(:,:,2);
imgV=img(:,:,3);

imgH_s1=conv2(double(imgH),S1,'same');
imgH_s2=conv2(double(imgH),S2,'same');
imgH_s=(abs(imgH_s1) +abs(imgH_s2));


imgS_s1=conv2(double(imgS),S1,'same');
imgS_s2=conv2(double(imgS),S2,'same');
imgS_s=(abs(imgS_s1) +abs(imgS_s2));


imgV_s1=conv2(double(imgV),S1,'same');
imgV_s2=conv2(double(imgV),S2,'same');
imgV_s=(abs(imgV_s1) +abs(imgV_s2));

imgEQ=img;
imgEQ(:,:,1)=imgH_s;
imgEQ(:,:,2)=imgS_s;
imgEQ(:,:,3)=imgV_s;

imgEQ=hsv2rgb(imgEQ);
img=hsv2rgb(img);

figure
subplot(1,3,1)
imshow(img);
title('org');
subplot(1,3,2);
imshow(imgEQ,[]);
title('EQ');
subplot(1,3,3);
imshow(imgH_s+imgS_s+imgV_s,[]);
title('sum');
