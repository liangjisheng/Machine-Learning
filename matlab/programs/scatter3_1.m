clear all;clc;
[X,Y,Z]=sphere(15);%��������
x=X(:);y=Y(:);z=Z(:);
figure('color',[1,1,1]);
subplot(121);
scatter3(x,y,z,'r*');%������άɢ��ͼ
axis('tight');
colormap(cool);%����ɫͼ
xlabel('x');ylabel('y');zlabel('z');
subplot(122);
scatter3(x,y,z,'fill');
axis('tight');
xlabel('x');ylabel('y');zlabel('z');