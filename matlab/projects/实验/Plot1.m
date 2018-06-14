%在同一图中绘制
x=[-2*pi:0.1:2*pi];
y=x.^2-1;
z=cos(2*x);
plot(x,y,x,z);
grid on
xlabel('变量x');
ylabel('变量y&变量z');
title('y=x^2-1 z=cos(2*x)');