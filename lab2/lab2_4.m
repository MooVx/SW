close all;
clear all;

%wczytanie pliku do workspace
lena=imread('lena.bmp');

lena_9=imrotate(lena,90);
lena__9=imrotate(lena,-90);
lena_45=imrotate(lena,45);
lena__45=imrotate(lena,-45);

% 



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
figure(6);
imshow(imtranslate(lena,[50, -50]))

tform = affine2d([1 0 0; 0 1 0; 50 -10  1])

C=imwarp(lena,tform,'OutputView', imref2d(size(lena)));
figure(7);
imshow(C)



