close all
clear all

load maskiPP;

img = imread('kwadraty.tif');
imshow(img,[]);

img_s1=conv2(double(img),S1,'same');
img_s2=conv2(double(img),S2,'same');
BW=(abs(img_s1) +abs(img_s2));

figure(1);
subplot(1,2,1);
imshow(img,[]);
subplot(1,2,2);
imshow(BW,[]);


[H,T,R]=hough(BW);

figure(2);
imshow(H,[]);

P=houghpeaks(H,8)
hold on;
scatter(P(:,2),P(:,1),'filled');
hold off;

figure(3);


BW = edge(img,'canny');
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

