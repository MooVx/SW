clear all;
knee=imread('knee.png');
knee=double(knee);
imshow(knee,[]);
x_s=345;
y_s=308;

stos=zeros(2,40000);
visited=uint8(zeros(779,693));
segmented=uint8(zeros(779,693));
  stos(1,1)=x_s;
stos(2,1)=y_s;

visited(1,x_s)=1;
segmented(2,y_s)=1;
lp=1
    
    triger=10
   
    index=1;
    max_index=1;
    
while index< max_index
    
    x=stos(1,index);
    y=stos(2,index);
    
    for i=(x-1):(x+1)
        for j=(y-1):(y+1)
            if visited(i,j)==0
                if abs(knee(x_ref,y_ref)-knee(i,j))<triger
                    max_index=max_index+1;
                    segmented(i,j)=1;
                    stos(1,max_index)=i;
                    stos(2,max_index)=j;
                end
            end
            visited(i,j)=1;
        end
    end
    
index=index+1;
    
    
end

imshow(segmented)
imshow(visited,[])
