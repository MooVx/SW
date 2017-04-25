img=imread('indeks1.bmp');
[XX YY] = size(img);
L=1;

for x=2:XX-1
    for y=2:YY-1
        if img(x,y)~=0
            sasiedzi= [img(x-1,y-1) img(x-1,y) img(x-1,y+1) img(x,y-1)];
            suma = sum(sasiedzi);
            if suma==0
                img(x,y)=L;
                L=L+1;
            elseif suma >0
                sasiedzi_z=nonzeros(sasiedzi);
                miniumum=min(sasiedzi_z);
                img(x,y)= miniumum;
                maxiumum=max(sasiedzi_z);
            end
            
        end
        
    end
    
end



imshow(img,[])
