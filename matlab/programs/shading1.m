clear all;clc;
figure('color',[1,1,1]);
%mesh(peaks(50));绘制三维网格图
subplot(131);
surf(peaks(20));%绘制三维曲线图
brighten(0.8);%改变图的亮度
shading flat;%着色方式为flat
colormap('hsv');%设置色图
whitebg('yellow');%改变坐标轴的背景颜色
colordef none;%改变图形的背景颜色
handle=light('Position',[0 0 1],'Color','g','Style','infinite');%添加光源
set(handle) %获取光源句柄的可设置值
fprintf('property of light handle:\n');
get(handle) %获取光源句柄的属性
title('Flat shading');
xlabel('x');ylabel('y');zlabel('z');
subplot(1,3,2);
surf(peaks(20));
colormap(hot(64));
axis('tight');
colordef none;
brighten(0.7);
shading faceted;
title('Faceted shading');
xlabel('x');ylabel('y');zlabel('z');
subplot(1,3,3);
surf(peaks(20));
shading interp;
title('Interpolated,shading');
colormap(hsv);%设置色图
brighten(0.9);
xlabel('x');ylabel('y');zlabel('z');