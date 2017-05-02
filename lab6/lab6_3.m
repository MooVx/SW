%Binaryzacja dwuprogowa

obraz=imread('bart.bmp');

figure('Name','dwa progi');
subplot(1,3,1);
imshow(obraz,[]);
subplot(1,3,2);
imhist(obraz);
subplot(1,3,3);
trig=172/255
imshow(im2bw(obraz,trig));


[X Y] = size(obraz);
obrazBW = obraz;
trig_up=192;
trig_dn=172;

for i = 1:X
    for j = 1:Y
        if trig_up>obraz(i,j) && trig_dn>obraz(i,j)
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
