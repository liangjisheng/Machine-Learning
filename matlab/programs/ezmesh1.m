clear all;clc;
f=@(x,y)sin(x)-2*cos(y);%������������
figure('color',[1,1,1]);
subplot(121);
ezmesh(f,[0,9,1,5]);%������ά����ͼ
subplot(122);
ezmeshc(f,[0,5]);%���ƴ��еȸ��ߵ���ά����ͼ