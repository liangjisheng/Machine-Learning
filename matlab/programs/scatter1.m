clear all;clc;
x=rand(1,100)*100;
y=rand(1,100)*100;
s=rand(1,100)*100;
c=rand(1,100)*100;
subplot(2,1,1);
scatter(x,y,'m');%����ɢ��ͼ��������ɢ����ɫ
title('��άɢ��ͼָ��scatter(x,y)');
subplot(2,1,2)
scatter(x,y,s,c,'filled');
title('��άɢ��ͼָ��scatter(x,y,s,c)');