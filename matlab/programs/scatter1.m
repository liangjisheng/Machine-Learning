clear all;clc;
x=rand(1,100)*100;
y=rand(1,100)*100;
s=rand(1,100)*100;
c=rand(1,100)*100;
subplot(2,1,1);
scatter(x,y,'m');%绘制散点图，并设置散点颜色
title('二维散点图指令scatter(x,y)');
subplot(2,1,2)
scatter(x,y,s,c,'filled');
title('二维散点图指令scatter(x,y,s,c)');