clear all;clc;
a=randn(300,350);
pic2=imread('pic2.jpg');%��ȡͼ��
imwrite(a,'pic2.jpg','jpg');%д��ͼ��
b=imread('pic1.jpg');%��ȡͼ��
imwrite(b,'pic1_tif.tif','tif');%д��ͼ��
figure;
subplot(221);
imshow(a);%��ͼ
subplot(222);
imshow(b);%��ͼ
subplot(223);
image(pic2);%��ͼ