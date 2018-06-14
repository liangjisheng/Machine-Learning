clear all;clc;
[X,Y,Z]=sphere(15);%生成坐标
x=X(:);y=Y(:);z=Z(:);
figure('color',[1,1,1]);
subplot(121);
scatter3(x,y,z,'r*');%绘制三维散点图
axis('tight');
colormap(cool);%设置色图
xlabel('x');ylabel('y');zlabel('z');
subplot(122);
scatter3(x,y,z,'fill');
axis('tight');
xlabel('x');ylabel('y');zlabel('z');