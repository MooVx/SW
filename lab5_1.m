%A. Filtry liniowe uśredniające (dolnoprzepustowe)

plansza=imread('plansza.tif');

filtr3=fspecial('average',3);
figure(1)
subplot(1,3,1);
imshow(plansza);
subplot(1,3,2);
plansza_av=uint8(conv2(double(plansza),filtr3,'same'));
imshow(plansza_av,[]);
subplot(1,3,3);
imshow(imabsdiff(plansza,plansza_av),[]);

%%%%%%%%%%%%%

filtr5=fspecial('average',5);
filtr9=fspecial('average',9);
filtr15=fspecial('average',15);
filtr35=fspecial('average',35);

figure(2)

plansza=imread('lena.bmp');

subplot(2,3,1);
imshow(plansza);
title('orginal');
subplot(2,3,2);
imshow(uint8(conv2(double(plansza),filtr3,'same')),[]);
title('filtr3x3');
subplot(2,3,3);
imshow(uint8(conv2(double(plansza),filtr5,'same')),[]);
title('filtr5x5');
subplot(2,3,4);
imshow(uint8(conv2(double(plansza),filtr9,'same')),[]);
title('filtr9x9');
subplot(2,3,5);
imshow(uint8(conv2(double(plansza),filtr15,'same')),[]);
title('filtr15x15');
subplot(2,3,6);
imshow(uint8(conv2(double(plansza),filtr35,'same')),[]);
title('filtr35x35');

figure(3)
M= [1,2,1;
    2,4,2;
    1,2,1];

M=M/sum(sum(M));
filtr_gaus=fspecial('gaussian',5,0.5);
subplot(2,3,1);
imshow(plansza);
title('orginal');
subplot(2,3,2);
imshow(uint8(conv2(double(plansza),M,'same')),[]);
title('M');
subplot(2,3,3);
imshow(uint8(conv2(double(plansza),fspecial('gaussian',5,0.5),'same')),[]);
title('gauss 0.5');
subplot(2,3,4);
imshow(uint8(conv2(double(plansza),fspecial('gaussian',5,1),'same')),[]);
title('gauss 1');
subplot(2,3,5);
imshow(uint8(conv2(double(plansza),fspecial('gaussian',5,2),'same')),[]);
title('gauss 2');
subplot(2,3,6);
imshow(uint8(conv2(double(plansza),fspecial('gaussian',5,3),'same')),[]);
title('gauss 3');














