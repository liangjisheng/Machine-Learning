clear all;clc;
[X,Y]=meshgrid(-4:0.1:4);%������������
Z=peaks(X,Y);            %������ͼ����
figure('color',[1,1,1]);
surf(X,Y,Z);            %��ά����ͼ
colormap('hsv');        %������ɫ
view(3);                %�����ӽ�
shading flat;           
light('Position',[1,0.3,0.5]);%���ù���
axis auto;          %����������
xlabel('x');ylabel('y');zlabel('z');
title('the title of the figure')