coins=imread('coins.png');

figure(1);
subplot(1,3,1);
imshow(coins,[]);
subplot(1,3,2);
imhist(coins);
subplot(1,3,3);
trig=90/255
imshow(im2bw(coins,trig));

%%%%%%%%%%%%%%

figure(2);

obraz=imread('figura.tif');
subplot(4,3,1);
imshow(obraz,[]);
subplot(4,3,2);
imhist(obraz);
subplot(4,3,3);
trig=150/255;
imshow(im2bw(obraz,trig));

obraz=imread('figura2.tif');
subplot(4,3,4);
imshow(obraz,[]);
subplot(4,3,5);
imhist(obraz);
subplot(4,3,6);
trig=150/255;
imshow(im2bw(obraz,trig));

obraz=imread('figura3.tif');
subplot(4,3,7);
imshow(obraz,[]);
subplot(4,3,8);
imhist(obraz);
subplot(4,3,9);
trig=150/255;
imshow(im2bw(obraz,trig));

obraz=imread('figura4.tif');
subplot(4,3,10);
imshow(obraz,[]);
subplot(4,3,11);
imhist(obraz);
subplot(4,3,12);
trig=150/255;
imshow(im2bw(obraz,trig));


%%%%%%%%%%%%%%

figure(3);

obraz=imread('coins.png');

subplot(4,3,1);
imshow(obraz,[]);
subplot(4,3,2);
imhist(obraz);
subplot(4,3,3);
trig=190/255;
imshow(im2bw(obraz,trig));
title('trig=90');

subplot(4,3,4);
imshow(obraz,[]);
subplot(4,3,5);
imhist(obraz);
subplot(4,3,6);
trig=graythresh(coins);
imshow(im2bw(obraz,trig));
title('otsu');

subplot(4,3,7);
imshow(obraz,[]);
subplot(4,3,8);
imhist(obraz);
subplot(4,3,9);
trig=clusterKittler(coins)/255;
imshow(im2bw(obraz,trig));
title('clusterKittler');

subplot(4,3,10);
imshow(obraz,[]);
subplot(4,3,11);
imhist(obraz);
subplot(4,3,12);
trig=entropyYen(coins)/255;
imshow(im2bw(obraz,trig));
title('entropyYen');

%%%%%%%%%

figure(4);

obraz=imread('rice.png');

subplot(4,3,1);
imshow(obraz,[]);
subplot(4,3,2);
imhist(obraz);
subplot(4,3,3);
trig=120/255;
imshow(im2bw(obraz,trig));
title('trig=120');

subplot(4,3,4);
imshow(obraz,[]);
subplot(4,3,5);
imhist(obraz);
subplot(4,3,6);
trig=graythresh(coins);
imshow(im2bw(obraz,trig));
title('otsu');

subplot(4,3,7);
imshow(obraz,[]);
subplot(4,3,8);
imhist(obraz);
subplot(4,3,9);
trig=clusterKittler(coins)/255;
imshow(im2bw(obraz,trig));
title('clusterKittler');

subplot(4,3,10);
imshow(obraz,[]);
subplot(4,3,11);
imhist(obraz);
subplot(4,3,12);
trig=entropyYen(coins)/255;
imshow(im2bw(obraz,trig));
title('entropyYen');

%%%%%%%%%

figure(5);

obraz=imread('text.png');

subplot(4,3,1);
imshow(obraz,[]);
subplot(4,3,2);
imhist(obraz);
subplot(4,3,3);
trig=120/255;
imshow(im2bw(obraz,trig));
title('trig=120');

subplot(4,3,4);
imshow(obraz,[]);
subplot(4,3,5);
imhist(obraz);
subplot(4,3,6);
trig=graythresh(coins);
imshow(im2bw(obraz,trig));
title('otsu');

subplot(4,3,7);
imshow(obraz,[]);
subplot(4,3,8);
imhist(obraz);
subplot(4,3,9);
trig=clusterKittler(coins)/255;
imshow(im2bw(obraz,trig));
title('clusterKittler');

subplot(4,3,10);
imshow(obraz,[]);
subplot(4,3,11);
imhist(obraz);
subplot(4,3,12);
trig=entropyYen(coins)/255;
imshow(im2bw(obraz,trig));
title('entropyYen');



%%%%%%%%%

figure(6);

obraz=imread('obiekty.bmp');

subplot(4,3,1);
imshow(obraz,[]);
subplot(4,3,2);
imhist(obraz);
subplot(4,3,3);
trig=120/255;
imshow(im2bw(obraz,trig));
title('trig=120');

subplot(4,3,4);
imshow(obraz,[]);
subplot(4,3,5);
imhist(obraz);
subplot(4,3,6);
trig=graythresh(coins);
imshow(im2bw(obraz,trig));
title('otsu');

subplot(4,3,7);
imshow(obraz,[]);
subplot(4,3,8);
imhist(obraz);
subplot(4,3,9);
trig=clusterKittler(coins)/255;
imshow(im2bw(obraz,trig));
title('clusterKittler');

subplot(4,3,10);
imshow(obraz,[]);
subplot(4,3,11);
imhist(obraz);
subplot(4,3,12);
trig=entropyYen(coins)/255;
imshow(im2bw(obraz,trig));
title('entropyYen');

%%%%%%%%%

figure(7);

obraz=imread('katalog.bmp');

subplot(4,3,1);
imshow(obraz,[]);
subplot(4,3,2);
imhist(obraz);
subplot(4,3,3);
trig=120/255;
imshow(im2bw(obraz,trig));
title('trig=120');

subplot(4,3,4);
imshow(obraz,[]);
subplot(4,3,5);
imhist(obraz);
subplot(4,3,6);
trig=graythresh(coins);
imshow(im2bw(obraz,trig));
title('otsu');

subplot(4,3,7);
imshow(obraz,[]);
subplot(4,3,8);
imhist(obraz);
subplot(4,3,9);
trig=clusterKittler(coins)/255;
imshow(im2bw(obraz,trig));
title('clusterKittler');

subplot(4,3,10);
imshow(obraz,[]);
subplot(4,3,11);
imhist(obraz);
subplot(4,3,12);
trig=entropyYen(coins)/255;
imshow(im2bw(obraz,trig));
title('entropyYen');







































