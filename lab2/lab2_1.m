close all;
clear all;





%wczytanie pliku do workspace
szach=imread('szachownica.bmp');

%skalowanie obrazu x10 :
szach_n=imresize(szach,10,'nearest');
szach_b=imresize(szach,10,'bilinear');
szach_c=imresize(szach,10,'bicubic');

figure(4);
imshow(szach_n);
figure(5);
imshow(szach_b);
figure(6);
imshow(szach_c);




