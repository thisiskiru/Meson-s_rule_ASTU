im=imread('000003.jpg');
im=rgb2gray(im);
im=255-im;
imshow(im);
T = adaptthresh(im);

im2=imbinarize(im,T);

imshowpair(im,im2,'montage');

%%

se = strel('disk',2);
bw = imclose(im,se);

im=im>40;

%imshow(im);

