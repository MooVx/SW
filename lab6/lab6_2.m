%%%%%%%%%%%%%%Binaryzacja lokalna

obraz=imread('rice.png');
[X Y] = size(obraz);
obrazBW = obraz;
W2=20;
for i = 1:X
    for j = 1:Y
        if meanLT(i,j,W2,obraz,X,Y)>obrazBW(i,j)
            obrazBW(i,j)=0;
        else 
            obrazBW(i,j)=255;
        end
    end
end

figure(1);
subplot(1,2,1);
imshow(obraz,[]);
subplot(1,2,2);
imshow(obrazBW,[]);

%%%%%%%%%%%%%%

obraz=imread('katalog.bmp');
[X Y] = size(obraz);
obrazBW = obraz;
W2=10;
for i = 1:X
    for j = 1:Y
        if meanLT(i,j,W2,obraz,X,Y)>obrazBW(i,j)
            obrazBW(i,j)=0;
        else 
            obrazBW(i,j)=255;
        end
    end
end

figure(2);
subplot(1,2,1);
imshow(obraz,[]);
subplot(1,2,2);
imshow(obrazBW,[]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%

obraz=imread('rice.png');
[X Y] = size(obraz);
obrazBW = obraz;
W2=8;
k=-0.15;
R=128;

for i = 1:X
    for j = 1:Y
        m=meanLT(i,j,W2,obraz,X,Y);
        odch=stddevLT(i,j,W2,obraz,m,X,Y);
        T=m*(1+k*((odch/R)-1));
        
        if T>obrazBW(i,j)
            obrazBW(i,j)=0;
        else 
            obrazBW(i,j)=255;
        end
    end
end

figure(3);
subplot(1,2,1);
imshow(obraz,[]);
subplot(1,2,2);
imshow(obrazBW,[]);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%

obraz=imread('katalog.bmp');
[X Y] = size(obraz);
obrazBW = obraz;
W2=8;
k=0.15;
R=128;

for i = 1:X
    for j = 1:Y
        m=meanLT(i,j,W2,obraz,X,Y);
        odch=stddevLT(i,j,W2,obraz,m,X,Y);
        T=m*(1+k*((odch/R)-1));
        
        if T>obrazBW(i,j)
            obrazBW(i,j)=0;
        else 
            obrazBW(i,j)=255;
        end
    end
end

figure(4);
subplot(1,2,1);
imshow(obraz,[]);
subplot(1,2,2);
imshow(obrazBW,[]);





