clear all;clc;
rand('seed',0);
x=rand(100,1)*4-3;%����������
y=rand(100,1)*4-3;
z=3*x.*exp(-x.^2-y.^2);
ti=-3:0.2:3;
[XI,YI]=meshgrid(ti,ti);%��������
ZI1=griddata(x,y,z,XI,YI,'linear');%���ݲ�ֵ������linear����
figure('color',[1,1,1]);
subplot(121);
mesh(XI,YI,ZI1);%������ά����ͼ
hold on
plot3(x,y,z,'o');%������ά���ݵ�
hold off;
axis('tight');
title('linear');
subplot(122);
ZI2=griddata(x,y,z,XI,YI,'cubic');%���ݲ�ֵ������cubic����
mesh(XI,YI,ZI2);
hold on;
plot3(x,y,z,'o');
hold off;
axis ('tight');
title('cubic');