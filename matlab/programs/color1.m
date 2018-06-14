clear all;clc;
figure('color',[1,1,1]);
subplot(121);
brighten(0.9);
mesh(peaks(50));
colorbar('SouthOutSide');%在图形外部的下面的添加颜色条
brighten(0.9);
subplot(122);
surf(peaks(50));
colormap(cool);
colorbar('East');%在图形内部的右侧添加颜色条