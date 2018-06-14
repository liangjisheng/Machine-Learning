clear all;clc;
tic;%启动秒表
for i=10:30
    a=inv(randn(i));
    t(i-9)=toc;%记时
end
figure('color',[1,1,1]);%产生图形窗口
plot(10:30,t);
ylabel('time/seconds');