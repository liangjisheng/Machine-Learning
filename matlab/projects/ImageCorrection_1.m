% 基于概率的数字图像光照不均匀校正
I = imread('white.jpg');
subplot(2,2,1);
imshow(I);
title('原始图像');

%对图像添加噪声并显示
% J = imnoise(I,'salt & pepper', 0.1);
% subplot(2,2,2);
% imshow(J);
% title('加噪图像');

global thr;
thr=3;
% 通过块操作提取背景并显示
J=double(J);
blocks=blockproc(J,[128 128],@estibackground);
background=imresize(blocks,[2592 1944],'bilinear'); %获得背景图像
subplot(2,2,3);
imshow(background,[]);
title('提取背景');
% 通过图像减运算进行光照不均匀校正
I2=imsubtract(J,background);
Iout=medfilt2(I2,[3 3]);
subplot(2,2,4);
imshow(Iout,[]);
title('校正图像');