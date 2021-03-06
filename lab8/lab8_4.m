close all;
clear all;

ksztaltyReal = imread('ksztaltyReal.bmp');

figure(1)
imshow(ksztaltyReal,[]);
title('Original');

[X,Y,Z] = size(ksztaltyReal);
labeled(X,Y)=0;
TH = 60;

for i=1:X
    for j=1:Y
        
        if ksztaltyReal(i,j,1)<TH && ksztaltyReal(i,j,2)<TH && ksztaltyReal(i,j,3)<TH
             labeled(i,j) = 1;
        else
            labeled(i,j) = 0;
        end
        
    end
end



M =[1 2 1;
    2 4 2; 
    1 2 1];
M = M/sum(sum(M));
filtered = conv2(labeled,M,'same');

figure(2)
imshow(filtered,[]);
title('Filtered');

filtered = bwlabel(filtered,8);

r = regionprops(filtered,'Centroid');
for i=1:length(r)
    text(r(i).Centroid(1),r(i).Centroid(2),['\color{magenta}',num2str(i)]);
end

wspolczynniki = obliczWspolczynniki(filtered);
[X,Y] = size(filtered);
wydzielone(X,Y)=0;

for i=1:X
    for j=1:Y
        
        piksel = filtered(i,j);
        if (piksel ~= 0 && (wspolczynniki(piksel,1) > 0.35 && wspolczynniki(piksel,1) < 0.6)...
        && (wspolczynniki(piksel,2) > 0.5 && wspolczynniki(piksel,2) < 0.7)...
        && (wspolczynniki(piksel,3) > 4.8 && wspolczynniki(piksel,3) < 5.2))
             
            wydzielone(i,j) = 1;
        end
        
    end
end

figure(3);
imshow(wydzielone,[]);
title('Result');







