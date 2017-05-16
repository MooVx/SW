close all;
clear all;

figure(1);

img = imread('kwadrat.bmp');

f_img=fft2(img);
ff_img=fftshift(f_img);

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
title('abs');
subplot(2,3,3);
imshow(F,[]);
% mesh(F);
title('angle');

%%%%%


img = imread('kwadratT.bmp');

f_img=fft2(img);
ff_img=fftshift(f_img);

Y=ff_img;
A=abs(Y);
A = log10(A+1);
F = angle(Y.*(A>0.0001));

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


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(2);

img = imread('kwadrat.bmp');

f_img=fft2(img);
ff_img=fftshift(f_img);

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
title('abs');
subplot(2,3,3);
imshow(F,[]);
% mesh(F);
title('angle');

%%%%%


img = imread('kwadrat45.bmp');

f_img=fft2(img);
ff_img=fftshift(f_img);

Y=ff_img;
A=abs(Y);
A = log10(A+1);
F = angle(Y.*(A>0.0001));

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


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(3);

img = imread('kwadrat.bmp');

f_img=fft2(img);
ff_img=fftshift(f_img);

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
title('abs');
subplot(2,3,3);
imshow(F,[]);
% mesh(F);
title('angle');

%%%%%


img = imread('kwadratS.bmp');

f_img=fft2(img);
ff_img=fftshift(f_img);

Y=ff_img;
A=abs(Y);
A = log10(A+1);
F = angle(Y.*(A>0.0001));

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


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(4);

img = imread('kwadrat.bmp');

f_img=fft2(img);
ff_img=fftshift(f_img);

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
title('abs');
subplot(2,3,3);
imshow(F,[]);
% mesh(F);
title('angle');

%%%%%


img = imread('kwadratKL.bmp');

f_img=fft2(img);
ff_img=fftshift(f_img);

Y=ff_img;
A=abs(Y);
A = log10(A+1);
F = angle(Y.*(A>0.0001));

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


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
