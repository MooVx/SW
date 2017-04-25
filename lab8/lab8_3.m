img=imread('ksztalty.bmp');


img_8=bwlabel(img,8);

M=obliczWspolczynniki(img_8);

figure(1);
% subplot(1,3,1);
% imshow(img,[]);
% title('orginal')
% subplot(1,3,2);
% imshow(img_4,[]);
% title('4')
% subplot(1,3,3);
% imshow(img_8,[]);
% title('8')


% imshow(img_8,[]);
% r = regionprops(img_8,'Centroid');
% for i=1:length(r)
%     text(r(i).Centroid(1),r(i).Centroid(2),['\color{magenta}',num2str(i)]);
% end


for x=2:XX-1
    for y=2:YY-1

                if M(tabSkl(img(x,y)),1)>0.7
                    img(x,y)=0;
                end 

    end
end
imshow(img,[]);
