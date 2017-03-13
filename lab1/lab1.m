%wyswietlenie informacji o plikach :
imfinfo('lena.bmp') 
imfinfo('lena.jpg')

%wczytanie plików do workspace
lena_b=imread('lena.bmp');
lena_j=imread('lena.jpg');

%wyswietlenie obrazu:
imshow(lena_b)
figure(2);
imshow(lena_j)

%konwersja na skale szrosci, wyswietlenie
lena_gray=rgb2gray(lena_j);
figure(3);
imshow(lena_gray)

%zapisanie obrazu w skali szroœci jako pliku
imwrite(lena_gray,'lena_gray.bmp');

%wyswietlenie obrazka w skali szaroœci jako funkcji dwóch zmiennych
figure(1);
colormap('gray')
mesh(lena_gray);

%przekrój "wzd³u¿" 10 wiersza
figure(5);
plot(lena_gray(10,:));

%przekrój "wzd³u¿" 10 kolumny
figure(6);
plot(lena_gray(:,10));


%wczytanie pliku do workspace
lena_g=imread('lena_gray.bmp');

%konwersja do obrazu indeksowanego
[image map]=gray2ind(lena_g,256);

%Wyœwietlenie obrazu indeksowanego
imshow(image,map)

%zmiana mapy kolorów na wbudowan¹ mape 'hsv', oraz wyœwietlenie
map=colormap('hsv');
imshow(image,map)


%%%%%%% Systemy (modele) barw  %%%%%%%%

%wczytanie pliku do workspace
lena=imread('lena.bmp');

%Wyœwietlenie R,G,B na osobnych wykresach
R = lena(:,:,1); G = lena(:,:,2); B = lena(:,:,3);
figure(3);
subplot(2,2,1);
imshow(lena);
title('Oryginal');
subplot(2,2,2);
imshow(R);
title('R');
subplot(2,2,3);
imshow(G);
title('G');
subplot(2,2,4);
imshow(B);
title('B');

%konwersja na hsv
lena_hsv=rgb2hsv(lena);

%Wyœwietlenie H,S,V na osobnych wykresach
H = lena_hsv(:,:,1); S = lena_hsv(:,:,2); V = lena_hsv(:,:,3);
figure(2);
subplot(2,2,1);
imshow(lena_hsv);
title('Oryginal');
subplot(2,2,2);
imshow(H);
title('H');
subplot(2,2,3);
imshow(S);
title('S');
subplot(2,2,4);
imshow(V);
title('V');

%konwersja na YCrCb
lena_c=rgb2ycbcr(lena);

%Wyœwietlenie Y,Cr,Cb na osobnych wykresach
Y = lena_c(:,:,1); Cr = lena_c(:,:,2); Cb = lena_c(:,:,3);
figure(4);
subplot(2,2,1);
imshow(lena_c);
title('Oryginal');
subplot(2,2,2);
imshow(Y);
title('Y');
subplot(2,2,3);
imshow(Cr);
title('Cr');
subplot(2,2,4);
imshow(Cb);
title('Cb');