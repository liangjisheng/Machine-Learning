clear all;clc;
x=imread('pic1.jpg');%��ȡ���ɫͼƬ
[y,map]=imread('pic1_tif.tif');%��ȡ����ͼ��
figure;
subplot(121)
imshow(x);%���ú���imshow��ͼ
subplot(122);
imshow(y,map);
a=randn(40)*100;%�������������
figure;
subplot(121);
image(a);%���ú���image��ͼ
subplot(122);
imagesc(a);%���ú���imagesc��ͼ
i1=imageinfo('pic1.jpg') %��ȡjpg��ʽ��ͼ����Ϣ
i2=imfinfo('pic1_tif.tif')%��ȡtif��ʽ��ͼ����Ϣ