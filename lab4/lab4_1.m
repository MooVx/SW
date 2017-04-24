% Histogram dla obrazów w odcieniach szarości


lena1=imread('lena1.bmp');
lena2=imread('lena2.bmp');
lena3=imread('lena3.bmp');
lena4=imread('lena4.bmp');

figure(1);
subplot(2,4,1);
imshow(lena1);
subplot(2,4,2);
imshow(lena2);
subplot(2,4,3);
imshow(lena3);
subplot(2,4,4);
imshow(lena4);
subplot(2,4,5);
imhist(lena1,256);
subplot(2,4,6);
imhist(lena2,256);
subplot(2,4,7);
imhist(lena3,256);
subplot(2,4,8);
imhist(lena4,256);




hist1=imread('hist2.bmp');
hist1_adj=imadjust(hist1);
figure(2);
subplot(2,2,1);
imshow(hist1);
subplot(2,2,2);
imshow(hist1_adj);
subplot(2,2,3);
imhist(hist1);
subplot(2,2,4);
imhist(hist1_adj);




[H,x]=imhist(hist1);
C=cumsum(H);
k = max(C)/max(H);
C2=C/k;
figure(3);
plot(x,H);
hold on;
plot(x,C2);
hold off;

figure(4);
wsp=max(C2)/256;
Cs=uint8(C2/wsp);
subplot(3,1,1)
imshow(intlut(hist1,Cs))
title('orginal')
subplot(3,1,2)
imhist(intlut(hist1,Cs));
title('his')
subplot(3,1,3)
plot(x,Cs)
title('his kum')

figure(5);
subplot(2,2,1);
imshow(hist1);
subplot(2,2,2);
imshow(histeq(hist1,256));
subplot(2,2,3);
imhist(hist1);
subplot(2,2,4);
imhist(histeq(hist1,256));

figure(6);
subplot(2,2,1);
imshow(hist1);
subplot(2,2,2);
imshow(adapthisteq(hist1));
subplot(2,2,3);
imhist(hist1);
subplot(2,2,4);
imhist(adapthisteq(hist1));


