function adapt =adaptive_6_8_19(im)
    adapt = imbinarize(im, 'adaptive');
    imwrite(adapt,'adapt.jpg');   
end