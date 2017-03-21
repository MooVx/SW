% Dopasowywanie histogramu (Histogram Matching)

phobos=imread('phobos.bmp');
figure(1);
subplot(1,3,1);
imshow(phobos);
subplot(1,3,2);
imshow(histeq(phobos));
wsp=max(histogramZadany)/256;
His=uint8(histogramZadany/wsp);
subplot(1,3,3);
imshow(histeq(phobos,histogramZadany));

figure(2);
subplot(1,3,1);
imshow(phobos);
subplot(1,3,2);
imshow(imadjust(phobos));
title('adj')
subplot(1,3,3);
imshow(adapthisteq(phobos));
title('CLAHE')


[H,x]=imhist(phobos);
lm_b=round(mean(H));
C=cumsum(H);
[X Y] = size(phobos);
[value lm_d] = min( abs(C-(X*Y/2)))/max(H);

H1=H(0 : lm_b);

