%多子图的绘制
x1=[-2*pi:0.1:2*pi];
y1=tan(x1);
x2=[-5:0.1:5];
y2=2*x2.^3;
x3=[-2:0.1:5];
y3=log(x3+2);
x4=[-5:0.1:5];
y4=exp(5*x4);
subplot(2,2,1);
plot(x1,y1,'r');
grid on
xlabel('x');
ylabel('y1=tan(x)');
subplot(2,2,2);
plot(x2,y2,'g');
grid on
xlabel('x');
ylabel('y2=2*x.^3');
subplot(2,2,3);
plot(x3,y3,'b');
grid on
xlabel('x');
ylabel('y3=log(x+2)');
subplot(2,2,4);
plot(x4,y4,'k');
grid on
xlabel('x');
ylabel('y4=exp(5*x)');