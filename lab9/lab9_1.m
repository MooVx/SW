global segRes trig_ min_ index mean_ sim;


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
trig_=0.02;
index=1;
sim =4;

 split(img,x1,y1,x2,y2);
 
 imshow(mean_,[]);

 n=index;
 for n=1:index
     IB = segRes == n;
     if any(IB)
         continue;
     end
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
         end
         
     end

 end

 imshow(label2rgb(segRes),[]);
 
 
 
 