%Operacje logiczne
clear all;
close all;


kolo=imread('kolo.bmp');
kwadrat=imread('kwadrat.bmp');

kolo_b = boolean(kolo);
kwadrat_b = boolean(kwadrat);

figure(1);
subplot(2,2,1);
imshow(kolo_b&kwadrat_b,[]);
subplot(2,2,2);
imshow(kolo_b|kwadrat_b,[]);
subplot(2,2,3);
imshow(~kwadrat_b,[]);
subplot(2,2,4);
imshow(xor(kolo_b,kwadrat_b),[]);

