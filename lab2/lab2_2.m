close all;
clear all;

%wczytanie pliku do workspace
lena=imread('lena.bmp');

%skalowanie obrazu x2 :
lena256=imresize(lena,0.5);
lena128=imresize(lena,0.25);
lena64=imresize(lena,0.125);

figure(10);
imshow(lena,'InitialMagnification',100);
figure(11);
imshow(lena256,'InitialMagnification',200);
figure(12);
imshow(lena128,'InitialMagnification',400);
figure(13);
imshow(lena64,'InitialMagnification',800);






