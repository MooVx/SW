%Operacje logiczne
clear all;
close all;


kolo=imread('kolo.bmp');
kwadrat=imread('kwadrat.bmp');

kolo_b = boolean(kolo);
kwadrat_b = boolean(kwadrat);

figure(1);
subplot(3,1,1)
imshow(jet);
title('jet')
subplot(3,1,2)
imshow(lena);
title('lena')
subplot(3,1,3)
imshow(add,[]);
title('add')

