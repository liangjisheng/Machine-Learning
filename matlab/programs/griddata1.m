clear all;clc;
rand('seed',0);
x=rand(100,1)*4-3;%非网格数据
y=rand(100,1)*4-3;
z=3*x.*exp(-x.^2-y.^2);
ti=-3:0.2:3;
[XI,YI]=meshgrid(ti,ti);%网格数据
ZI1=griddata(x,y,z,XI,YI,'linear');%数据插值，采用linear方法
figure('color',[1,1,1]);
subplot(121);
mesh(XI,YI,ZI1);%绘制三维网格图
hold on
plot3(x,y,z,'o');%绘制三维数据点
hold off;
axis('tight');
title('linear');
subplot(122);
ZI2=griddata(x,y,z,XI,YI,'cubic');%数据插值，采用cubic方法
mesh(XI,YI,ZI2);
hold on;
plot3(x,y,z,'o');
hold off;
axis ('tight');
title('cubic');