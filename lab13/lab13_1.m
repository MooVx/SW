close all;
clear all;

img=imread('tetniak_aorty.png');
handler=imshow(img,[]);
handler_e=imellipse(gca,[220 100 260 170]);
mask=createMask(handler_e,handler);
filtr=fspecial('unsharp');
img_f=roifilt2(filtr,img,mask);

figure
handler=imshow(img);
handler_e=imellipse(gca,[220 100 260 170]);
mask=createMask(handler_e,handler);
handler_adj= @(img) imadjust(img,[0.5 0.7],[0.0 1.0]);
img_adj=roifilt2(img_f,mask,handler_adj);
imshow(img_adj,[])
