clear all;clc;
t=(1/16:1/8:1)'*2*pi;
x=sin(t);y=cos(t);
[X,Y,Z]=peaks(40);
figure('color',[1,1,1]);
subplot(121);
fill(x,y,'r');%��ά���ͼ
xlabel('x');ylabel('y');
subplot(122);
fill3(X,Y,Z,Z);%��ά���ͼ
grid on;
axis('tight');
xlabel('x');ylabel('y');zlabel('z');