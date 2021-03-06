close all
clear all

load maskiPP;

img = imread('lab112.bmp');

imshow(img,[]);

[X,Y,Z] = size(img);
labeled(X,Y)=0;
TH = 60;

for i=1:X
    for j=1:Y
        
        if img(i,j,1)<TH && img(i,j,2)<TH && img(i,j,3)<TH
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
        if piksel ~= 0 && (wspolczynniki(piksel,2) > 0.74 && wspolczynniki(piksel,2) < 0.8)

             
            wydzielone(i,j) = 1;
        end
        
    end
end

imshow(wydzielone,[]);

img=wydzielone;

load maskiPP;

img_s1=conv2(double(img),S1,'same');
img_s2=conv2(double(img),S2,'same');
BW=(abs(img_s1) +abs(img_s2));

imshow(BW,[]);
[H,T,R] = hough(BW);
imshow(H,[],'XData',T,'YData',R,...
            'InitialMagnification','fit');
xlabel('\theta'), ylabel('\rho');
axis on, axis normal, hold on;
P  = houghpeaks(H,8,'threshold',ceil(0.3*max(H(:))));
x = T(P(:,2)); y = R(P(:,1));
plot(x,y,'s','color','white');
% Find lines and plot them
lines = houghlines(BW,T,R,P,'FillGap',5,'MinLength',7);
figure, imshow(img), hold on
max_len = 0;
for k = 1:length(lines)
   xy = [lines(k).point1; lines(k).point2];
   plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green');

   % Plot beginnings and ends of lines
   plot(xy(1,1),xy(1,2),'x','LineWidth',2,'Color','yellow');
   plot(xy(2,1),xy(2,2),'x','LineWidth',2,'Color','red');

   % Determine the endpoints of the longest line segment
   len = norm(lines(k).point1 - lines(k).point2);
   if ( len > max_len)
      max_len = len;
      xy_long = xy;
   end
end

% highlight the longest line segment
plot(xy_long(:,1),xy_long(:,2),'LineWidth',2,'Color','blue');
