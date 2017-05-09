global segRes trig_ min_ index mean_;


img = imread('umbrealla.png');

img_hsv=rgb2hsv(img);
img_h=img_hsv(:,:,1);
[row, col]=size(img_h);


segRes=ones(row,col);
x1=1;
y1=1;
x2=row;
y2=col;

min_=4;
trig_=0.05;
index=0;


 split(img,x1,y1,x2,y2);
 
 imshow(mean_,[]);
 
 
 