%B.Filtry nieliniowe - mediana

lena_szum=imread('lenaSzum.bmp');

figure(1)
subplot(1,3,1);
imshow(lena_szum);
subplot(1,3,2);
imshow(medfilt2(lena_szum),[]);
subplot(1,3,3);
imshow(imabsdiff(lena_szum,medfilt2(lena_szum)),[]);

%%%%%%%%%%%
figure(2)

lena=imread('lena.bmp');
subplot(2,3,1);
imshow(lena);
title('orginal');
subplot(2,3,2);
imshow(medfilt2(lena),[]);
title('mediana');
subplot(2,3,3);
imshow(imabsdiff(lena_szum,medfilt2(lena_szum)),[]);
title('różnica');

filtr3=fspecial('average',3);
subplot(2,3,4);
imshow(lena);
title('orginal');
subplot(2,3,5);
lena_av=uint8(conv2(double(lena),filtr3,'same'));
imshow(lena_av,[]);
title('rśrednia');
subplot(2,3,6);
imshow(imabsdiff(lena,lena_av),[]);
title('różnica');







