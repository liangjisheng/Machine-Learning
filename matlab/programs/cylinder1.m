clear all;clc;
t=0:pi/10:2*pi;
figure('color',[1 1 1]);
subplot(121);
sphere;%������ά����ͼ
axis equal;%����������
%cylinder(2+cos(t)); ������ά����ͼ
xlabel('x');ylabel('y');zlabel('z');
subplot(122);
[X,Y,Z]=sphere(30);%������ά����ͼ����
mesh(2*X-2,2*Y-2,2*Z-2);%������ά����ͼ���뾶Ϊ2
hold on ;
mesh(1+X,1+Y,1+Z);%������ά����ͼ���뾶Ϊ1
axis equal;
%[X,Y,Z]=cylinder(2+sin(t),50);������ά����ͼ������
%mesh(X,Y,Z);������ά����ͼ
xlabel('x');ylabel('y');zlabel('z');