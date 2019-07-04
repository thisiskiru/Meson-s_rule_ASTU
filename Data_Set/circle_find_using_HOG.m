im=imread('new.jpg');
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% h=[-1,1];
% 
% [Gx, Gy] = imgradientxy(imbw,'prewitt');
% figure;
% imshow(Gx);
% figure;

A=imbw;
[centers, radii, metric] = imfindcircles(A,[1 30]);

centersStrong5 = centers(1:10,:); 
radiiStrong5 = radii(1:10);
metricStrong5 = metric(1:10);


viscircles(centersStrong5, radiiStrong5,'EdgeColor','b');
