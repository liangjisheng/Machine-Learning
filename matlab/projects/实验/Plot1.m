%��ͬһͼ�л���
x=[-2*pi:0.1:2*pi];
y=x.^2-1;
z=cos(2*x);
plot(x,y,x,z);
grid on
xlabel('����x');
ylabel('����y&����z');
title('y=x^2-1 z=cos(2*x)');