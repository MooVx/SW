function [] = split( img, x1,y1 , x2 ,y2)

global segRes trig_ min_ index mean_;

area=img(x1:x2,y1:y2);
area_v=double(area(:));
[row, col]=size(area);
meanLoc=mean(area_v);
std_=std(area_v);

    if std_ > trig_ && row > min_ && col > min_
        x_prim=(round((x2-x1)/2)+x1);
        y_prim=(round((y2-y1)/2)+y1);
        split(img,x1,y1,x_prim,y_prim);
        split(img,x1,y_prim,x_prim,y2);
        split(img,x_prim,y1,x2,y_prim);
        split(img,x_prim,y_prim,x2,y2);
    else 
        index=index+1;
        segRes(x1:x2,y1:y2) = index;
        mean_(x1:x2,y1:y2) = meanLoc;
    end

end

