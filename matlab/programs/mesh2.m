clear all;clc;
[X,Y]=meshgrid(-2:0.1:2,-3:0.1:2);
Z=2*X.^2+X.*Y+3*Y.^2;
figure('color',[1,1,1]);
subplot(121);
meshc(X,Y,Z,X);%���ƴ��еȸ��ߵ���ά����ͼ
xlabel('x');ylabel('y');zlabel('z');
subplot(122);
meshz(Z);%���ƴ��е�������ά����ͼ
xlabel('x');ylabel('y');zlabel('z');