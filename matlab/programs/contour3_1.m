clear all;clc;
[X,Y,Z]=peaks(50);%��������
figure;
subplot(121);
contour3(X,Y,Z,30);%������ά�ȸ���ͼ
axis('tight');
colormap(cool);%����ɫͼ
xlabel('x');ylabel('y');zlabel('z');
subplot(122);
[C,h]=contour3(Z,10);
clabel(C,h);%����ά�ȸ���ͼ���б�ע
axis('tight');
xlabel('x');ylabel('y');zlabel('z');