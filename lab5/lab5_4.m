%Gradienty (wykorzystanie pierwszej pochodnej obrazu)

clear all
close all

kw=imread('kw.bmp');
load maskiPP;

kw_1=uint8(conv2(double(kw),R1,'same'));
figure(1)
subplot(1,3,1);
imshow(kw);
title('orginal');
subplot(1,3,2);
kw_12=kw_1+128;
imshow(kw_12,[]);
title('+128');
subplot(1,3,3);
imshow(abs(kw_1),[]);
title('abs');

kw_1=uint8(conv2(double(kw),R2,'same'));
figure(2)
subplot(1,3,1);
imshow(kw);
title('orginal');
subplot(1,3,2);
kw_12=kw_1+128;
imshow(kw_12,[]);
title('+128');
subplot(1,3,3);
imshow(abs(kw_1),[]);
title('abs');

kw_1=uint8(conv2(double(kw),P1,'same'));
figure(3)
subplot(1,3,1);
imshow(kw);
title('orginal');
subplot(1,3,2);
kw_12=kw_1+128;
imshow(kw_12,[]);
title('+128');
subplot(1,3,3);
imshow(abs(kw_1),[]);
title('abs');

kw_1=uint8(conv2(double(kw),P2,'same'));
figure(4)
subplot(1,3,1);
imshow(kw);
title('orginal');
subplot(1,3,2);
kw_12=kw_1+128;
imshow(kw_12,[]);
title('+128');
subplot(1,3,3);
imshow(abs(kw_1),[]);
title('abs');

kw_s1=uint8(conv2(double(kw),S1,'same'));
figure(5)
subplot(1,3,1);
imshow(kw);
title('orginal');
subplot(1,3,2);
kw_s12=kw_s1+128;
imshow(kw_s12,[]);
title('+128');
subplot(1,3,3);
imshow(abs(kw_s1),[]);
title('abs');

kw_s2=uint8(conv2(double(kw),S2,'same'));
figure(6)
subplot(1,3,1);
imshow(kw);
title('orginal');
subplot(1,3,2);
kw_s22=kw_s2+128;
imshow(kw_s22,[]);
title('+128');
subplot(1,3,3);
imshow(abs(kw_s2),[]);
title('abs');


kw_s1=conv2(double(kw),S1,'same');
kw_s2=conv2(double(kw),S2,'same');
kw_sk=sqrt(kw_s1.^2 +kw_s2.^2);
figure(7)
subplot(1,3,1);
imshow(kw);
title('orginal');

subplot(1,3,2);
imshow(kw_sk+128,[]);
title('+128');

subplot(1,3,3);
imshow(abs(kw_sk),[]);
title('abs');


kw_s1=conv2(double(kw),S1,'same');
kw_s2=conv2(double(kw),S2,'same');
kw_sk=(abs(kw_s1) +abs(kw_s2));
figure(8)
subplot(1,3,1);
imshow(kw);
title('orginal');
subplot(1,3,2);
imshow(kw_sk+128,[]);
title('+128');
subplot(1,3,3);
imshow(abs(kw_sk),[]);
title('abs');



