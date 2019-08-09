function closeBW=imclose_6_8_19(im,SE)
   
    closeBW = imclose(im,SE);
    figure,title('closing'),imshow(closeBW);
end