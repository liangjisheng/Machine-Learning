clear all;clc;
[X,Y,Z]=peaks(30);
figure('color',[1,1,1]);
colormap('gray');%������ɫΪ��ɫ
subplot(121);
%surf(X,Y,Z);������ά����ͼ
surfl(Z);
title('surfl()');
subplot(122);
surfl(X,Y,Z,'light');%���ƴ��ȸ�����ά����ͼ
title('surfc()');
xlabel('x');ylabel('y');zlabel('z');