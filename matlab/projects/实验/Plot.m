%图形绘制
x=[-2*pi:0.1:2*pi];
y=sin(1./x);
plot(x,y);
grid on
xlabel('变量x');
ylabel('变量y');
title('sin(1/x)');
% 用鼠标的光标定位,将sin(1/x)这个注解放在你鼠标点击的地方
gtext('sin(1/x)');