clear all;clc;
t=0:pi/10:2*pi;
figure('color',[1 1 1]);
subplot(121);
sphere;%绘制三维球面图
axis equal;%设置坐标轴
%cylinder(2+cos(t)); 绘制三维柱面图
xlabel('x');ylabel('y');zlabel('z');
subplot(122);
[X,Y,Z]=sphere(30);%产生三维球面图坐标
mesh(2*X-2,2*Y-2,2*Z-2);%绘制三维球面图，半径为2
hold on ;
mesh(1+X,1+Y,1+Z);%绘制三维球面图，半径为1
axis equal;
%[X,Y,Z]=cylinder(2+sin(t),50);产生三维柱面图的坐标
%mesh(X,Y,Z);绘制三维柱面图
xlabel('x');ylabel('y');zlabel('z');