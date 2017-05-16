clear all;
close all;
global segRes trig_ min_ index mean_ sim;

stos=java.util.Stack();

img = imread('umbrealla.png');
figure(1);
imshow(img,[]);

img_hsv=rgb2hsv(img);
img_h=img_hsv(:,:,1);
[row, col]=size(img_h);


segRes=ones(row,col);
x1=1;
y1=1;
x2=row;
y2=col;

min_=8;
trig_=0.02;
index=1;
sim =6;
cnt=0;
split(img,x1,y1,x2,y2);
figure(2);
imshow(mean_,[]);


for n=1:index
    stos.push(n);
end

while not(stos.empty())
    n=stos.pop();
    IB = segRes == n;
    IBDilate = imdilate(IB,strel('square',3));
    IBDiff = IBDilate-IB;
    IBMult = IBDiff.*segRes;
    IBMultNZ = nonzeros(IBMult);
    BUnique = unique(IBMultNZ);
    for i=1:length(BUnique)
        IBS = segRes == BUnique(i);
        [x,y]=find(IB,1,'first');
        [xs,ys]=find(IBS,1,'first');
        if abs(mean_(x,y)-mean_(xs,ys))<sim
            segRes(IBS) = n;
             stos.push(n);
        end
    end

end

figure(3);
imshow(label2rgb(segRes),[]);


 
 