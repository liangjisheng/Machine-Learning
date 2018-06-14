clear all;clc;
set(0,'Defaultaxesfontsize',12);%���õ�ǰ����ͼ�δ��������������СΪ12��
x=0:0.01:2*pi;
y1=cos(x);
y2=sin(x);
plot(x,y1,'--g','LineWidth',5)
hold on
plot(x,y2,'-k','LineWidth',5)
hold off
xlabel('x','fontsize',15);
ylabel('y1=cos(x)/y2=sin(x)','fontsize',15)
title('y1=sin(x)��y2cos(x)���ߵ�ͼ��','fontsize',15,'FontWeight','bold');
grid on;%�������
legend('y_1=cos(x)','y_2=sin(x)',0);%��עͼ��,0��������ͼ����λ��
axis([0 2*pi -1 1]);%���������ķ�Χ
%��ͼ�������ڱ�ע�ı�
text(2*pi/4,sin(2*pi/4),'\leftarrow sin(x)','HorizontalAlignment','left')
text(2*pi/4,cos(2*pi/4),'cos(x),rightarrow','HorizontalAlignment','left')
gtext('y1=cos(x)','Color','r')