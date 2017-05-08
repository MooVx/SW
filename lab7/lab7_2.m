clear all;
img=imread('knee.png');
img=double(img);
imshow(img,[]);
[max_x max_y]=size(img);

[y_ref x_ref]=ginput;
x_ref =floor(x_ref )+1
y_ref =floor(y_ref )+1
stos=java.util.Stack();
visited=uint8(zeros(max_x,max_y));
visited(1,:)=1;
visited(:,1)=1;
visited(max_x,:)=1;
visited(:,max_y)=1;
segmented=(zeros(max_x,max_y));
  
stos.push([x_ref y_ref]);

visited(x_ref,y_ref)=1;
segmented(x_ref,y_ref)=1;
iter=0;

m_prev=1;
points=1;



triger=30;
h=fspecial('gaussian',4,4);
    
while not(stos.empty())
    
    top=stos.pop();
    x=top(1,1);
    y=top(2,1);
 
    for i=(x-1):(x+1)
        for j=(y-1):(y+1)
            if visited(i,j)==0
                m=(m_prev*(points-1)+img(i,j))/points;
                if abs(m-img(i,j))<triger
                    segmented(i,j)=1;
                    m_prev=m;
                    points=points+1;
                    stos.push([i j]);          
                end               
            end             
            visited(i,j)=1;
        end
    end

    if iter==500
        iter=0;
        imshow(imfilter(img.*segmented,h),[])
        drawnow;
    end
    iter=iter+1;    
end


imshow(imfilter(img.*segmented,h),[])



