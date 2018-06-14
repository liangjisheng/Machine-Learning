clear all;clc;
x=-1:1/20:1;
y1=sin(pi*x);
y2=cos(pi*x);
subplot(211)
plot(x,y1,'r-.*')
hold on
plot(x,y2,'b-^')
subplot(212)
plot(x,y1,'r-.*',x,y2,'b-^')
hold off