clear all;clc;
y=randn(500,1);%建立正态分布的向量
figure(1);
hist(y);%绘制默认直方图
x=[-2:0.01:4];
figure(2);
hist(y,x);