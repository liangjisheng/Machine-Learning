% ���ڸ��ʵ�����ͼ����ղ�����У��
I = imread('white.jpg');
subplot(2,2,1);
imshow(I);
title('ԭʼͼ��');

%��ͼ�������������ʾ
% J = imnoise(I,'salt & pepper', 0.1);
% subplot(2,2,2);
% imshow(J);
% title('����ͼ��');

global thr;
thr=3;
% ͨ���������ȡ��������ʾ
J=double(J);
blocks=blockproc(J,[128 128],@estibackground);
background=imresize(blocks,[2592 1944],'bilinear'); %��ñ���ͼ��
subplot(2,2,3);
imshow(background,[]);
title('��ȡ����');
% ͨ��ͼ���������й��ղ�����У��
I2=imsubtract(J,background);
Iout=medfilt2(I2,[3 3]);
subplot(2,2,4);
imshow(Iout,[]);
title('У��ͼ��');