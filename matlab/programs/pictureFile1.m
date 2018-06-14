clear all;clc;
a=randn(300,350);
pic2=imread('pic2.jpg');%¶ÁÈ¡Í¼Ïñ
imwrite(a,'pic2.jpg','jpg');%Ğ´ÈëÍ¼Ïñ
b=imread('pic1.jpg');%¶ÁÈ¡Í¼Ïñ
imwrite(b,'pic1_tif.tif','tif');%Ğ´ÈëÍ¼Ïñ
figure;
subplot(221);
imshow(a);%»æÍ¼
subplot(222);
imshow(b);%»æÍ¼
subplot(223);
image(pic2);%»æÍ¼