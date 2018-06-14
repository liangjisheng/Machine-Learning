clear all;clc;
[X,Y,Z]=peaks(30);
figure('color',[1,1,1]);
colormap('gray');%设置颜色为灰色
subplot(121);
%surf(X,Y,Z);绘制三维曲面图
surfl(Z);
title('surfl()');
subplot(122);
surfl(X,Y,Z,'light');%绘制带等高线三维曲面图
title('surfc()');
xlabel('x');ylabel('y');zlabel('z');