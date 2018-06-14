clear all;clc;
figure('color',[1,1,1]);
%mesh(peaks(50));������ά����ͼ
subplot(131);
surf(peaks(20));%������ά����ͼ
brighten(0.8);%�ı�ͼ������
shading flat;%��ɫ��ʽΪflat
colormap('hsv');%����ɫͼ
whitebg('yellow');%�ı�������ı�����ɫ
colordef none;%�ı�ͼ�εı�����ɫ
handle=light('Position',[0 0 1],'Color','g','Style','infinite');%��ӹ�Դ
set(handle) %��ȡ��Դ����Ŀ�����ֵ
fprintf('property of light handle:\n');
get(handle) %��ȡ��Դ���������
title('Flat shading');
xlabel('x');ylabel('y');zlabel('z');
subplot(1,3,2);
surf(peaks(20));
colormap(hot(64));
axis('tight');
colordef none;
brighten(0.7);
shading faceted;
title('Faceted shading');
xlabel('x');ylabel('y');zlabel('z');
subplot(1,3,3);
surf(peaks(20));
shading interp;
title('Interpolated,shading');
colormap(hsv);%����ɫͼ
brighten(0.9);
xlabel('x');ylabel('y');zlabel('z');