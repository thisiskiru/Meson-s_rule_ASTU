function manual = manual_6_8_19(im)
    th=125;
    manual=im>th;
    imwrite(manual,'maunal.jpg');   
end