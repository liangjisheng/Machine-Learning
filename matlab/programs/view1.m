clear all;clc;
[X,Y,Z]=peaks(40);%��ȡ����
figure('color',[1,1,1]);
subplot(121);
surf(X,Y,Z);%������ά����ͼ
hidden off;%��ʾͼ���ڵ�����
[az,el]=view %��ȡ��άͼ�ε�Ĭ���ӽ�
T=view %��ȡ�任����
title(mat2str([az,el]));
axis('tight');
xlabel('x');ylabel('y');zlabel('z');
subplot(122);
h=surf(X,Y,Z);
hidden on;%����ͼ���ڵ�����
view(5,40);
title(mat2str([5,40]));
axis('tight');
rotate(h,[0,0,1],90);%��άͼ�ε���ת
rotate3d('on');%��ͼ�ε���ά�ӽǵĹ���
xlabel('x');ylabel('y');zlabel('z');