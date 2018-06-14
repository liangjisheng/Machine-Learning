clear all;clc;
[X,Y,Z]=peaks(40);%获取数据
figure('color',[1,1,1]);
subplot(121);
surf(X,Y,Z);%绘制三维曲线图
hidden off;%显示图形遮挡部分
[az,el]=view %获取三维图形的默认视角
T=view %获取变换矩阵
title(mat2str([az,el]));
axis('tight');
xlabel('x');ylabel('y');zlabel('z');
subplot(122);
h=surf(X,Y,Z);
hidden on;%隐藏图形遮挡部分
view(5,40);
title(mat2str([5,40]));
axis('tight');
rotate(h,[0,0,1],90);%三维图形的旋转
rotate3d('on');%打开图形的三维视角的功能
xlabel('x');ylabel('y');zlabel('z');