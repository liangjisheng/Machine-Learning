clear all;clc;
f=@(x,y)sin(x)-2*cos(y);%建立匿名函数
figure('color',[1,1,1]);
subplot(121);
ezmesh(f,[0,9,1,5]);%绘制三维网格图
subplot(122);
ezmeshc(f,[0,5]);%绘制带有等高线的三维网格图