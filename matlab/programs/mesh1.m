clear all;clc;
[X,Y]=meshgrid(-4:0.1:4);%产生网格数据
Z=peaks(X,Y);            %产生绘图数据
figure('color',[1,1,1]);
surf(X,Y,Z);            %三维曲线图
colormap('hsv');        %设置颜色
view(3);                %设置视角
shading flat;           
light('Position',[1,0.3,0.5]);%设置光照
axis auto;          %设置坐标轴
xlabel('x');ylabel('y');zlabel('z');
title('the title of the figure')