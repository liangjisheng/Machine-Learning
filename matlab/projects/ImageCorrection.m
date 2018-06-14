% imgSrc = imread('whiteGray.jpg');
imgSrc = imread('3.jpg');
imgGray = rgb2gray(imgSrc);
imgHistEQ = histeq(imgGray);

figure;
subplot(2,2,1);
imshow(imgGray);        % ÏÔÊ¾Í¼ÏñÊı×Ö¾ØÕó
title('source image');
subplot(2,2,2);
imshow(imgHistEQ);
title('image after histgraom equalization');
subplot(2,2,3);
imhist(imgGray);
title('histogram of source image');
subplot(2,2,4);
imhist(imgHistEQ);
title('histogram of image after HE');