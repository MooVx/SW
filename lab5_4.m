%Gradienty (wykorzystanie pierwszej pochodnej obrazu)

kw=imread('jet.bmp');
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

Sk=sqrt(S1.^2 +S2.^2)/9;
kw_s2=uint8(conv2(double(kw),Sk,'same'));
figure(7)
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

Sk=(abs(S1) +abs(S2))/9;
kw_s2=uint8(conv2(double(kw),Sk,'same'));
figure(8)
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



