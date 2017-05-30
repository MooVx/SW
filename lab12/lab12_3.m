close all;
clear all;

img=imread('ferrari.bmp');
img=rgb2gray(img);

se = strel('square',3);  
mod=imdilate(img,se);

figure
subplot(1,2,1)
imshow(img,[]);
subplot(1,2,2)
imshow(mod,[]);
title('imditate 3');

%%%%



figure
subplot(2,2,1)
imshow(img,[]);
title('orginal');

subplot(2,2,2)
se = strel('square',3);  
mod_e=imerode(img,se);
imshow(mod_e,[]);
title('imerode');

subplot(2,2,3)
se = strel('square',3);  
mod_d=imdilate(img,se);
imshow(mod_d,[]);
title('imditate');

subplot(2,2,4)
imshow(abs(mod_d-mod_e),[]);
title('ditate--erode');
%%%%%%%%%%%%%%%%%%%%
figure
subplot(2,2,1)
imshow(img,[]);
title('orginal');

subplot(2,2,2)
se = strel('square',3);  
mod_c=imclose(img,se);
imshow(mod_c,[]);
title('imclose');

subplot(2,2,3)
se = strel('square',3);  
mod_o=imopen(img,se);
imshow(mod_o,[]);
title('imopen');

subplot(2,2,4)
imshow(abs(mod_c-mod_o),[]);
title('close--open');

%%%%%%%%%%%%%%%%%%%%
figure
subplot(2,2,1)
imshow(img,[]);
title('orginal');

subplot(2,2,2)
se = strel('square',3);  
mod_t=imtophat(img,se);
imshow(mod_t,[]);
title('imtophat');

subplot(2,2,3)
se = strel('square',3);  
mod_b=imbothat(img,se);
imshow(mod_b,[]);
title('imbothat');

subplot(2,2,4)
imshow(abs(mod_t-mod_b),[]);
title('top--bottom');

%%%%%%%%%%%%%%%%%%%%%%

img=imread('rice.png');


se = strel('disk',10);  
mod=imtophat(img,se);

figure
subplot(1,2,1)
imshow(img,[]);
subplot(1,2,2)
imshow(mod,[]);
title('imtophat');

