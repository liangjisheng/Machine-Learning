clear all;clc;
figure('color',[1,1,1]);
subplot(121);
brighten(0.9);
mesh(peaks(50));
colorbar('SouthOutSide');%��ͼ���ⲿ������������ɫ��
brighten(0.9);
subplot(122);
surf(peaks(50));
colormap(cool);
colorbar('East');%��ͼ���ڲ����Ҳ������ɫ��