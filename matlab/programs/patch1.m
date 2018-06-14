clear all;clc;
xdata=[2 2 0 2 5;2 8 2 4 5;8 8 2 4 8];
ydata=[4 4 4 2 0;8 4 6 2 2;4 0 4 0 0];
zdata=[2,2,2,2,2;4,4,4,4,4;1,1,1,1,1];
figure('color',[1,1,1]);
subplot(121);
patch(xdata,ydata,zdata,'g');
view(3);
grid on;
subplot(122);
patch('XData',xdata,'YData',ydata,'ZData',zdata,'EdgeColor',[1 0 0]);%低级调用
view(3);%设置视角
grid on;