img=imread('indeks1.bmp');
[XX YY] = size(img);
L=1;
tabSkl= zeros(1,256);

for x=2:XX-1
    for y=2:YY-1
        if img(x,y)~=0
            sasiedzi= [img(x-1,y-1) img(x-1,y) img(x-1,y+1) img(x,y-1)];
            suma = sum(sasiedzi);
            if suma==0
                img(x,y)=L;
                tabSkl(L)=L;
                L=L+1;
            elseif suma >0
                sasiedzi_z=nonzeros(sasiedzi);
                minimum=min(sasiedzi_z);
                img(x,y)= minimum;
                maximum=max(sasiedzi_z);
                tabSkl(maximum)=minimum;
            end
            
        end
        
    end
    
end

for x=2:XX-1
    for y=2:YY-1
        if img(x,y)~=0
            img(x,y)=tabSkl(img(x,y));
        end
    end
end



imshow(img,[])

% img=imread('indeks2.bmp');
% [XX YY] = size(img);
% 
% 
% img_4=bwlabel(img,4);
% img_8=bwlabel(img,8);
% 
% figure(1);
% subplot(1,3,1);
% imshow(img,[]);
% title('orginal')
% subplot(1,3,2);
% imshow(img_4,[]);
% title('4')
% subplot(1,3,3);
% imshow(img_8,[]);
% title('8')

