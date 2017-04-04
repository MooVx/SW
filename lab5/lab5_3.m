%Laplasjan (wykorzystanie drugiej pochodnej obrazu)

moon=imread('moon.bmp');
M = [0, 1, 0; 
     1,-4, 1;
     0, 1, 0];

M=M/9;

moon_l=conv2(double(moon),M,'same');

figure(1)
subplot(1,3,1);
imshow(moon);
title('orginal');
subplot(1,3,2);
moon_l2=uint8(moon_l+128);
imshow(moon_l2,[]);
title('+128');
subplot(1,3,3);
imshow(abs(moon_l),[]);
title('abs');

%%%%%%%%

figure(2)

lap03=fspecial('laplacian', 0.3);
lap09=fspecial('laplacian', 0.9);
lap05=fspecial('laplacian', 0.5);

subplot(2,2,1);
imshow(moon);
title('orginal');
subplot(2,2,2);
imshow(imabsdiff(moon,uint8(conv2(double(moon),lap03,'same'))),[]);
title('lap03');
subplot(2,2,3);
imshow(imabsdiff(moon,uint8(conv2(double(moon),lap05,'same'))),[]);
title('lap05');
subplot(2,2,4);
imshow(imabsdiff(moon,uint8(conv2(double(moon),lap09,'same'))),[]);
title('lap09');


%%%%%%%%

figure(3)


dipxe=imread('dipxe.jpg');


filtr_gaus=fspecial('gaussian',5,0.5);
dipxe_roz=uint8(conv2(double(dipxe),M,'same'));
dipxe_mask=dipxe - dipxe_roz;

dipxe_fin=dipxe+0.5*dipxe_mask;


subplot(2,2,1);
imshow(dipxe);
title('orginal');
subplot(2,2,2);
imshow(dipxe_mask,[]);
title('dipxe mask');
subplot(2,2,3);
imshow((dipxe+2*dipxe_mask),[]);
title('2');
subplot(2,2,4);
imshow((dipxe+4*dipxe_mask),[]);
title('4');




















