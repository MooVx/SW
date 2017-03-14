%Operacje arytmetyczne
clear all;
close all;

jet=imread('jet.bmp');
lena=imread('lena.bmp');
%%%%%%%%%%%  add
add=imadd(jet,lena,'uint16');
figure(1);
subplot(3,1,1)
imshow(jet);
title('jet')
subplot(3,1,2)
imshow(lena);
title('lena')
subplot(3,1,3)
imshow(add,[]);
title('add')

%%%%%%%%%%%%%%% lin
figure(2);
subplot(2,3,1)
imshow(jet)
title('orginal')
subplot(2,3,4)
imshow(imlincomb(2,jet))
title('zmodyfikowany')

subplot(2,3,2)
imshow(jet)
title('orginal')
subplot(2,3,5)
imshow(imlincomb(6,jet))
title('zmodyfikowany')


subplot(2,3,3)
imshow(jet)
title('orginal')
subplot(2,3,6)
imshow(imlincomb(1,jet))
title('zmodyfikowany')

%%%%%%%%% add2
add=imadd(jet,lena,'uint16');
figure(3);
subplot(3,1,1)
imshow(jet);
title('jet')
subplot(3,1,2)
imshow(lena);
title('lena')
subplot(3,1,3)
imshow(add,[]);
title('add')

%%%%%%%%%%%% odj

 lena16=int16(lena);
 jet16=int16(jet);

odj=imsubtract(lena16,jet16);

figure(4);
subplot(3,1,1)
imshow(jet16,[]);
title('jet')
subplot(3,1,2)
imshow(lena16,[]);
title('lena')
subplot(3,1,3)
imshow(odj,[]);
title('odj')

figure(5);
subplot(3,1,1)
imshow(jet16,[]);
title('jet')
subplot(3,1,2)
imshow(lena16,[]);
title('lena')
subplot(3,1,3)
imshow(imabsdiff(lena16,jet16),[]);
title('odj')


%%%%%%%%%%%% mnozenie


mn=immultiply(lena16,jet16);

figure(6);
subplot(3,3,1:3)
imshow(jet16,[])
title('jet')

subplot(3,3,4:6)
imshow(lena16,[])
title('lena')


subplot(3,3,7)
imshow(immultiply(lena16,jet16),[])
title('lena x jet')


kolo=imread('kolo.bmp');

subplot(3,3,8)
imshow(immultiply(lena16,int16(kolo)),[])
title('lena x kolo')


kwadrat=imread('kwadrat.bmp');

subplot(3,3,9)
imshow(immultiply(lena16,int16(kwadrat)),[])
title('lena x kwadrat')


%%%%%%%%%%%% negatyw

figure(7);
imshow(imcomplement(lena16),[])
title('lena negatyw')






