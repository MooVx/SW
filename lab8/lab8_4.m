close all;
img=imread('ksztaltyReal.bmp');
img=rgb2gray(img);

level = graythresh(img)
img = logical(1 - imbinarize(img,0.451));
img = bwareafilt(img,[3000 500000]);
img_8=uint8(bwlabel(img,4));
figure(1)
imshow(img_8,[]);
r = regionprops(img_8,'Centroid');
for i=1:length(r)
    text(r(i).Centroid(1),r(i).Centroid(2),['\color{magenta}',num2str(i)]);
end
title('orginal')

[XX YY] = size(img_8);
M=obliczWspolczynniki(img_8);




figure(2)

subplot(2,3,1)
img_8=uint8(bwlabel(img,8));
for x=2:XX-1
    for y=2:YY-1
        if  img_8(x,y)~=0 && 0.3<M(img_8(x,y),1) &&  M(img_8(x,y),1)<0.62   &&...
            img_8(x,y)~=0 && 0.5<M(img_8(x,y),2) &&  M(img_8(x,y),2)<0.7    &&...
            img_8(x,y)~=0 && 4.8<M(img_8(x,y),3) &&  M(img_8(x,y),3)<5.3    &&...
            img_8(x,y)~=0 && 0.972<M(img_8(x,y),4) &&  M(img_8(x,y),4)<0.985&&...
            img_8(x,y)~=0 && 0.007<M(img_8(x,y),5) &&  M(img_8(x,y),5)<0.010 
            
        img_8(x,y)=0;
        end
    end
end
imshow(img_8,[]);
r = regionprops(img_8,'Centroid');
for i=1:length(r)
    text(r(i).Centroid(1),r(i).Centroid(2),['\color{magenta}',num2str(i)]);
end
title('Combo')





subplot(2,3,2)
img_8=uint8(bwlabel(img,8));
for x=2:XX-1
    for y=2:YY-1
        if img_8(x,y)~=0 && 0.3<M(img_8(x,y),1) &&  M(img_8(x,y),1)<0.62
            img_8(x,y)=0;
        end
    end
end
imshow(img_8,[]);
r = regionprops(img_8,'Centroid');
for i=1:length(r)
    text(r(i).Centroid(1),r(i).Centroid(2),['\color{magenta}',num2str(i)]);
end
title('Compactness')

subplot(2,3,3)
img_8=uint8(bwlabel(img,8));
for x=2:XX-1
    for y=2:YY-1
        if img_8(x,y)~=0 && 0.5<M(img_8(x,y),2) &&  M(img_8(x,y),2)<0.7
            img_8(x,y)=0;
        end
    end
end
imshow(img_8,[]);
r = regionprops(img_8,'Centroid');
for i=1:length(r)
    text(r(i).Centroid(1),r(i).Centroid(2),['\color{magenta}',num2str(i)]);
end
title('Rmin/Rmax')

subplot(2,3,4)
img_8=uint8(bwlabel(img,8));
for x=2:XX-1
    for y=2:YY-1
        if img_8(x,y)~=0 && 4.8<M(img_8(x,y),3) &&  M(img_8(x,y),3)<5.3
            img_8(x,y)=0;
        end
    end
end
imshow(img_8,[]);
r = regionprops(img_8,'Centroid');
for i=1:length(r)
    text(r(i).Centroid(1),r(i).Centroid(2),['\color{magenta}',num2str(i)]);
end
title('Blair - Bliss')

subplot(2,3,5)
img_8=uint8(bwlabel(img,8));
for x=2:XX-1
    for y=2:YY-1
        if img_8(x,y)~=0 && 0.972<M(img_8(x,y),4) &&  M(img_8(x,y),4)<0.985
            img_8(x,y)=0;
        end
    end
end
imshow(img_8,[]);
r = regionprops(img_8,'Centroid');
for i=1:length(r)
    text(r(i).Centroid(1),r(i).Centroid(2),['\color{magenta}',num2str(i)]);
end
title('Haralick')

subplot(2,3,6)
img_8=uint8(bwlabel(img,8));
for x=2:XX-1
    for y=2:YY-1
        if img_8(x,y)~=0 && 0.007<M(img_8(x,y),5) &&  M(img_8(x,y),5)<0.010
            img_8(x,y)=0;
        end
    end
end
imshow(img_8,[]);
r = regionprops(img_8,'Centroid');
for i=1:length(r)
    text(r(i).Centroid(1),r(i).Centroid(2),['\color{magenta}',num2str(i)]);
end
title('M7')










