clear all;clc;
set(0,'Defaultaxesfontsize',12);%设置当前绘制图形窗口坐标轴字体大小为12磅
x=0:0.01:2*pi;
y1=cos(x);
y2=sin(x);
plot(x,y1,'--g','LineWidth',5)
hold on
plot(x,y2,'-k','LineWidth',5)
hold off
xlabel('x','fontsize',15);
ylabel('y1=cos(x)/y2=sin(x)','fontsize',15)
title('y1=sin(x)和y2cos(x)曲线的图像','fontsize',15,'FontWeight','bold');
grid on;%添加网格
legend('y_1=cos(x)','y_2=sin(x)',0);%标注图例,0用来设置图例的位置
axis([0 2*pi -1 1]);%添加坐标轴的范围
%在图形区域内标注文本
text(2*pi/4,sin(2*pi/4),'\leftarrow sin(x)','HorizontalAlignment','left')
text(2*pi/4,cos(2*pi/4),'cos(x),rightarrow','HorizontalAlignment','left')
gtext('y1=cos(x)','Color','r')