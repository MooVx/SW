close all;
clear all;

img=imread('ertka.bmp');


figure
se = strel('square',3);        
eroded = imerode(img,se);
subplot(1,2,1)
imshow(img,[]);
subplot(1,2,2)
imshow(eroded,[]);
title('square 3')

figure
se = strel('diamond',3);        
eroded = imerode(img,se);
subplot(1,2,1)
imshow(img,[]);
subplot(1,2,2)
imshow(eroded,[]);
title('diamond 3')

figure
se = strel('disk',3);        
eroded = imerode(img,se);
subplot(1,2,1)
imshow(img,[]);
subplot(1,2,2)
imshow(eroded,[]);
title('disk 3')

figure
se = strel('square',1);        
eroded = imerode(img,se);
subplot(1,2,1)
imshow(img,[]);
subplot(1,2,2)
imshow(eroded,[]);
title('square 1')

figure
se = strel('diamond',1)      
eroded = imerode(img,se);
subplot(1,2,1)
imshow(img,[]);
subplot(1,2,2)
imshow(eroded,[]);
title('diamond 1')

figure
se = strel('disk',2)        
eroded = imerode(img,se);
subplot(1,2,1)
imshow(img,[]);
subplot(1,2,2)
imshow(eroded,[]);
title('disk 2')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


img=imread('buska.bmp');


figure
se =   [1,0,1;
        0,1,0;
        1,0,1]        
eroded = imerode(img,se);
subplot(1,2,1)
imshow(img,[]);
subplot(1,2,2)
imshow(eroded,[]);
title('cross 3')

figure
se =    [1,0,0,0,1;
         0,1,0,1,0;
         0,0,1,0,0;
         0,1,0,1,0;
         1,0,0,0,1]
     
eroded = imerode(img,se);
subplot(1,2,1)
imshow(img,[]);
subplot(1,2,2)
imshow(eroded,[]);
title('cross 5')


%%%%%%%%%%%%%%%%%%%%

img=imread('ertka.bmp');

se =   ones(3);
mod=imdilate(img,se);

figure
subplot(1,2,1)
imshow(img,[]);
subplot(1,2,2)
imshow(mod,[]);
title('imditate 3');


%%%%%%%%%%%%%%%%%%%%



se = strel('square',3);  
mod=imclose(img,se);

figure
subplot(1,2,1)
imshow(img,[]);
subplot(1,2,2)
imshow(mod,[]);
title('imclose 3');

%%%%%%%%%%%%%%%%%%%%


se = strel('square',3);  
mod=imopen(img,se);

figure
subplot(1,2,1)
imshow(img,[]);
subplot(1,2,2)
imshow(mod,[]);
title('imopen 3');
%%%%%%%%%%%%%%%%%%%%


se = strel('square',3);  
mod=imerode(img,se);
se = strel('disk',4);  
mod=imclose(mod,se);

figure
subplot(1,2,1)
imshow(img,[]);
subplot(1,2,2)
imshow(mod,[]);
title('fine');

%%%%%%%%%%%%%%%%%%%%%%%%%%%
img=imread('hom.bmp');

SE1=   [0 1 0;
        1 1 1; 
        0 1 0];
    
SE2=  [1 0 1; 
       0 0 0; 
       1 0 1];

mod=bwhitmiss(img,SE1);

figure
subplot(1,2,1)
imshow(img,[]);
subplot(1,2,2)
imshow(mod,[]);
title('bwhitmiss SE1');

mod=bwhitmiss(img,SE1,SE2);

figure
subplot(1,2,1)
imshow(img,[]);
subplot(1,2,2)
imshow(mod,[]);
title('bwhitmiss SE1 i SE2');
