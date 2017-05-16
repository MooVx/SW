close all;
clear all;

figure(1);

img = imread('kolo.bmp');

f_img=fft2(img);
ff_img=fftshift(f_img);

img_ff=ifft2(ifftshift(ff_img));

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

subplot(2,3,4);
imshow(img_ff,[]);
title('img');
subplot(2,3,5);
imshow((double(img)-img_ff),[]);
% mesh(A);
title('img-img_ff');
subplot(2,3,6);
imshow(img_ff,[]);
% mesh(F);
title('img_ff');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

