im=imread('000004.jpg');
im=rgb2gray(im);
im=255-im;
imshow(im);

%threshold using gray thresh(otus's)

T  = graythresh(im);
bwim=imbinarize(im,T);
imshowpair(im,bwim,'montage');


[Label,ne]= bwlabel(bwim);
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
imbw=(Label==la);
%imshow(Label==i);

%derivate in vertical direction

h=[-1,1];
imzzz=imfilter(bwim,h);
imshow(imzzz);

h=[-1;1];
imyyy=imfilter(imzzz,h);
imshow(imyyy);

se = strel('disk',5);
bwfilled = imclose(imyyy,se);

filled=imfill(bwfilled,'holes');
imshowpair(filled,bwfilled,'montage');
%imshow(im);




