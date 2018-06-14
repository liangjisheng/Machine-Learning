% 三维图形，旋转抛物面
x=[-2*pi:0.1:2*pi];
y=[-2*pi:0.1:2*pi];
[X,Y]=meshgrid(x,y);
Z=tan(X.^2+Y.^2)./(X.^2+Y.^2);
surf(X,Y,Z);
xlabel('x');
ylabel('y');
zlabel('z');
title('曲面');