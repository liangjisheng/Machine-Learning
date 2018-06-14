clear all;clc;
[X,Y,Z]=peaks(50);%生成坐标
figure;
subplot(121);
contour3(X,Y,Z,30);%绘制三维等高线图
axis('tight');
colormap(cool);%设置色图
xlabel('x');ylabel('y');zlabel('z');
subplot(122);
[C,h]=contour3(Z,10);
clabel(C,h);%对三维等高线图进行标注
axis('tight');
xlabel('x');ylabel('y');zlabel('z');