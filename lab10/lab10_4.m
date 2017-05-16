close all;
clear all;


img = imread('lena.bmp');

figure(1);

f_img=fft2(img);
ff_img=fftshift(f_img);

Y=ff_img;
A=abs(Y);
A = log10(A+1);
F = angle(Y.*(A>0.0001));

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


figure(2);

[f1,f2] = freqspace(512,'meshgrid');
Hd = ones(512);
r = sqrt(f1.^2 + f2.^2);
Hd((r>0.1)) = 0;
colormap(jet(64));

filtred_f_img=ff_img.*Hd;

img_filtred=ifft2(ifftshift(filtred_f_img));

subplot(1,3,1);
imshow(img,[]);
title('img');
subplot(1,3,2);
mesh(f1,f2,Hd);
title('mesh');
subplot(1,3,3);
imshow(img_filtred,[]);
% mesh(F);
title('img filtred r>0.1');


figure(3);

[f1,f2] = freqspace(512,'meshgrid');
Hd = ones(512);
r = sqrt(f1.^2 + f2.^2);
Hd((r>0.3)) = 0;
colormap(jet(64));

filtred_f_img=ff_img.*Hd;

img_filtred=ifft2(ifftshift(filtred_f_img));

subplot(1,3,1);
imshow(img,[]);
title('img');
subplot(1,3,2);
mesh(f1,f2,Hd);
title('mesh');
subplot(1,3,3);
imshow(img_filtred,[]);
% mesh(F);
title('img filtred r>0.3');

figure(4);

[f1,f2] = freqspace(512,'meshgrid');
Hd = ones(512);
r = sqrt(f1.^2 + f2.^2);
Hd((r>0.1)&(r>0.9)) = 0;
colormap(jet(64));

filtred_f_img=ff_img.*Hd;

img_filtred=ifft2(ifftshift(filtred_f_img));

subplot(1,3,1);
imshow(img,[]);
title('img');
subplot(1,3,2);
mesh(f1,f2,Hd);
title('mesh');
subplot(1,3,3);
imshow(img_filtred,[]);
% mesh(F);
title('img filtred r<0.9');

figure(5);

[f1,f2] = freqspace(512,'meshgrid');
Hd = ones(512);
r = sqrt(f1.^2 + f2.^2);
Hd((r>0.3)&(r<0.7)) = 0;
colormap(jet(64));

filtred_f_img=ff_img.*Hd;

img_filtred=ifft2(ifftshift(filtred_f_img));

subplot(1,3,1);
imshow(img,[]);
title('img');
subplot(1,3,2);
mesh(f1,f2,Hd);
title('mesh');
subplot(1,3,3);
imshow(img_filtred,[]);
% mesh(F);
title('img filtred (r>0.3)&(r<0.7)');

figure(6);

h = fwind1(Hd,hanning(21));

[H f1 f2] = freqz2(h,512,512);
colormap(jet(64));

filtred_f_img=ff_img.*H;

img_filtred=ifft2(ifftshift(filtred_f_img));

subplot(1,3,1);
imshow(img,[]);
title('img');
subplot(1,3,2);
mesh(f1,f2,H);
title('mesh');
subplot(1,3,3);
imshow(img_filtred,[]);
% mesh(F);
title('img filtred hamming');


figure(7);

h = fwind1(Hd,chebwin(21));

[H f1 f2] = freqz2(h,512,512);
colormap(jet(64));

filtred_f_img=ff_img.*H;

img_filtred=ifft2(ifftshift(filtred_f_img));

subplot(1,3,1);
imshow(img,[]);
title('img');
subplot(1,3,2);
mesh(f1,f2,H);
title('mesh');
subplot(1,3,3);
imshow(img_filtred,[]);
% mesh(F);
title('img filtred chebwin');





