clear all;clc;
tic;%�������
for i=10:30
    a=inv(randn(i));
    t(i-9)=toc;%��ʱ
end
figure('color',[1,1,1]);%����ͼ�δ���
plot(10:30,t);
ylabel('time/seconds');