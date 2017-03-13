close all;
clear all;

%wczytanie pliku do workspace
lena=imread('lena.bmp');

lena_9=imrotate(lena,90);
lena__9=imrotate(lena,-90);
lena_45=imrotate(lena,45);
lena__45=imrotate(lena,-45);

% 
% figure(1);
% subplot(2,3,1);
% imshow(lena,[]);
% title('Oryginal');
% subplot(2,3,2);
% imshow(lena_9,[]);
% title('90');
% subplot(2,3,3);
% imshow(lena_45,[]);
% title('45');
% subplot(2,3,4);
% imshow(lena__45,[]);
% title('-45');
% subplot(2,3,5);
% imshow(lena__9,[]);
% title('-90');


%wczytanie pliku do workspace
szach=imread('szachownica.bmp');


szach_n=imrotate(szach,-45,'nearest');

szach_b=imrotate(szach,-45,'bilinear');

szach_c=imrotate(szach,-45,'bicubic');


% figure(2);
% imshow(szach_n,'InitialMagnification',400);
% figure(3);
% imshow(szach_b,'InitialMagnification',400);
% figure(4);
% imshow(szach_c,'InitialMagnification',400);



lena=imread('lena.bmp');


theta = -45;

wsp =0.5

pom = [wsp 0 0;
       0 wsp 0;
       0 0 1]

tform = affine2d([cosd(theta) -sind(theta) 0; sind(theta) cosd(theta) 0; 0 0 1]*pom)



B=imwarp(lena,tform);

figure(5);
imshow(B)
imshow(imtranslate(lena,[50, -50]))


