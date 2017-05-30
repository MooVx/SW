close all;
clear all;

img=imread('fingerprint.bmp');

mod=bwmorph(img,'thin',1);
figure
subplot(1,2,1)
imshow(img,[]);
subplot(1,2,2)
imshow(mod,[]);
title('thin 1')

mod=bwmorph(img,'thin',2);
figure
subplot(1,2,1)
imshow(img,[]);
subplot(1,2,2)
imshow(mod,[]);
title('thin 2')

mod=bwmorph(img,'thin',inf);
figure
subplot(1,2,1)
imshow(img,[]);
subplot(1,2,2)
imshow(mod,[]);
title('thin inf')
%%%%%%%%%%%%%%%%%%%%%%

img=imread('kosc.bmp');
mod=bwmorph(img,'skel',inf);
figure
subplot(1,2,1)
imshow(img,[]);
subplot(1,2,2)
imshow(mod,[]);
title('skel inf')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

img=imread('text.png');
se = ones(51,1);
mod=imopen(img,se);
marker=imerode(img,se);
fine=imreconstruct(marker,img);

figure
subplot(1,3,1)
imshow(img,[]);
subplot(1,3,2)
imshow(mod,[]);
subplot(1,3,3)
imshow(fine,[]);

mod=imfill(img,'holes');

figure
subplot(1,2,1)
imshow(img,[]);
subplot(1,2,2)
imshow(mod,[]);
title('imfill');

mod=imclearborder(img);

figure
subplot(1,2,1)
imshow(img,[]);
subplot(1,2,2)
imshow(mod,[]);
title('imclearborder');


