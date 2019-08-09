close all;
clc;
im=imread('000003.jpg');
imgray=rgb2gray(im);

 imhist(imgray);

manual=manual_6_8_19(imgray);
otsu=otsu_6_8_19(imgray);
adaptive=adaptive_6_8_19(imgray);

% subplot(2,3,1);imshow(manual);
% subplot(2,3,2);imshow(otsu);
% subplot(2,3,3);imshow(adaptive);

%/
%%
[Label,ne]= bwlabel(1-otsu);
max=0;la=0;

for i=1:ne
    %figure;
    %imshow(Label==i);
    x=nnz(Label==i);
    if(x>max)
        la=i;
        max=nnz(Label==i);
    end
end
figure;imshow(Label==la);title(nnz(Label==la));
pca=(Label==la);
SE = strel('square',4);
pcaimclose=imclose_6_8_19(pca,SE);
% manimclose=imclose_6_8_19(manual,SE);
% otsuimclose=imclose_6_8_19(otsu,SE);
% adaptimclose=imclose_6_8_19(adaptive,SE);
%%
hor=[1 0 -1;1 0 -1;1 0 -1];
ver=[1 0 1; 0 0 0;-1 0 -1];

verimage=imagegradiant_9_8_19(hor,pca);
horimage=imagegradiant_9_8_19(ver,verimage);
figure;
imshowpair(verimage,horimage,'montage');
secondclose=imclose_6_8_19(horimage,SE);
figure;imshow(secondclose);
figure;
%%
subplot(2,3,1);imshow(manual);
subplot(2,3,2);imshow(otsu);
subplot(2,3,3);imshow(adaptive);
% subplot(2,3,4);imshow(manimclose);

% subplot(2,3,5);imshow(otsuimclose);
% subplot(2,3,6);imshow(adaptimclose);
% nask=imbinarize(imgray);
% nask=1-nask;
% kernel=ones(3);
% j=regionfill(nask,imgray);
% 
% imshow(j);
% figure;
% %[Gx,Gy] = imgradientxy(nask);
% nask=imopen(nask,kernel);
% 
% 
% imshow(nask);
% erode=imerode(nask,kernel);
% dilation=imdilate(erode,kernel);
% 
% 
% result=imfill(dilation,holes);
% 
% imshow(dilation);





