clear all;
close all;

img = imread('dwieFale.bmp');

f_img=fft2(img);
ff_img=fftshift(f_img);

Y=ff_img;
A=abs(Y);
A = log10(A+1);
F = angle(Y.*(A>0.0001));

figure(1);
subplot(1,3,1);
imshow(img,[]);
title('img');
subplot(1,3,2);
imshow(A,[]);
% mesh(A);
title('abs');
subplot(1,3,3);
imshow(F,[]);
% mesh(F);
title('angle');

img = imread('kolo.bmp');

f_img=fft2(img);
ff_img=fftshift(f_img);

Y=ff_img;
A=abs(Y);
A = log10(A+1);
F = angle(Y.*(A>0.0001));

figure(2);
subplot(1,3,1);
imshow(img,[]);
title('img');
subplot(1,3,2);
% imshow(A,[]);
mesh(A);
title('abs');
subplot(1,3,3);
% imshow(F,[]);
mesh(F);
title('angle');

img = imread('kwadrat.bmp');

f_img=fft2(img);
ff_img=fftshift(f_img);

Y=ff_img;
A=abs(Y);
A = log10(A+1);
F = angle(Y.*(A>0.0001));

figure(3);
subplot(1,3,1);
imshow(img,[]);
title('img');
subplot(1,3,2);
imshow(A,[]);
% mesh(A);
title('abs');
subplot(1,3,3);
imshow(F,[]);
% mesh(F);
title('angle');


img = imread('kwadrat45.bmp');

f_img=fft2(img);
ff_img=fftshift(f_img);

Y=ff_img;
A=abs(Y);
A = log10(A+1);
F = angle(Y.*(A>0.0001));

figure(4);
subplot(1,3,1);
imshow(img,[]);
title('img');
subplot(1,3,2);
imshow(A,[]);
% mesh(A);
title('abs');
subplot(1,3,3);
imshow(F,[]);
% mesh(F);
title('angle');

img = imread('trojkat.bmp');

f_img=fft2(img);
ff_img=fftshift(f_img);

Y=ff_img;
A=abs(Y);
A = log10(A+1);
F = angle(Y.*(A>0.0001));

figure(5);
subplot(1,3,1);
imshow(img,[]);
title('img');
subplot(1,3,2);
imshow(A,[]);
% mesh(A);
title('abs');
subplot(1,3,3);
imshow(F,[]);
% mesh(F);
title('angle');





img = imread('kolo.bmp');



f_img=fft2(img);
ff_img=fftshift(f_img);

Y=ff_img;
A=abs(Y);
A = log10(A+1);
F = angle(Y.*(A>0.0001));


figure(6);


subplot(2,3,4);
imshow(img,[]);
title('img');
subplot(2,3,5);
imshow(A,[]);
% mesh(A);
title('abs');
subplot(2,3,6);
imshow(F,[]);
% mesh(F);
title('angle');


F1=fft(img,[],1);
F2=fft(F1,[],2);

fft=F1-F2;

ff_img=fftshift(fft);

Y=ff_img;
A=abs(Y);
A = log10(A+1);
F = angle(Y.*(A>0.0001));

subplot(2,3,1);
imshow(img,[]);
title('img');
subplot(2,3,2);
imshow(A,[]);
% mesh(A);
title('abs 2');
subplot(2,3,3);
imshow(F,[]);
% mesh(F);
title('angle 2');





