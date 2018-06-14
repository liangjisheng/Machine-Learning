% 参数方程画图
t=-5:0.1:5;
x=sin(5*t);
y=cos(5*t);
z=5*t;
plot3(x,y,z);
xlabel('x');
ylabel('y');
zlabel('z');
title('x=sin(5t),y=cos(5t),z=5t');