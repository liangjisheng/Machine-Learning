clear all;clc;
x=imread('pic1.jpg');%读取真彩色图片
[y,map]=imread('pic1_tif.tif');%读取索引图像
figure;
subplot(121)
imshow(x);%采用函数imshow绘图
subplot(122);
imshow(y,map);
a=randn(40)*100;%产生随机数矩阵
figure;
subplot(121);
image(a);%采用函数image绘图
subplot(122);
imagesc(a);%采用函数imagesc绘图
i1=imageinfo('pic1.jpg') %获取jpg格式的图形信息
i2=imfinfo('pic1_tif.tif')%获取tif格式的图像信息