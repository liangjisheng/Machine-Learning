clear all;clc;
t=clock;
for i=1:10000
    a(i)=log2(exp(i));
    time(i)=etime(clock,t);
end
figure('color',[1,1,1]);
plot(time);
ylabel('time/seconds');