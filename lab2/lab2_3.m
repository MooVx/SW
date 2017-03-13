close all;
clear all;

%wczytanie pliku do workspace
lena=imread('lena.bmp');

lena_31=imadjust(lena,[0 1],[0  31/255]);
lena_15=imadjust(lena,[0 1],[0  15/255]);
lena_7=imadjust(lena,[0 1],[0  7/255]);
lena_3=imadjust(lena,[0 1],[0  3/255]);
lena_1=imadjust(lena,[0 1],[0  1/255]);

figure(1);
subplot(2,3,1);
imshow(lena,[]);
title('Oryginal');
subplot(2,3,2);
imshow(lena_31,[]);
title('31');
subplot(2,3,3);
imshow(lena_15,[]);
title('15');
subplot(2,3,4);
imshow(lena_7,[]);
title('7');
subplot(2,3,5);
imshow(lena_3,[]);
title('3');
subplot(2,3,6);
imshow(lena_1,[]);
title('1');





