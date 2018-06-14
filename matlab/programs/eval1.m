clear all;clc;
t=0:pi/20:4*pi;
y=eval('sin(t)');
figure;
subplot(121);
plot(t,y);
subplot(122);
str='plot(t,sin(t),t,cos(t));legend(''sin(x)'',''cos'')';
eval(str);