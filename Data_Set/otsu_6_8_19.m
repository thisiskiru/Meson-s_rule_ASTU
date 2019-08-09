function otsu = otsu_6_8_19(im)
    T = graythresh(im);
    otsu= imbinarize(im,T);
    imwrite(otsu,'otsu.jpg');   
end