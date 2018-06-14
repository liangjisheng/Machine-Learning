clear all;clc;
data=[1:4;4:7;9,13,15,20];
figure('color',[1,1,1]);
subplot(121);
bar3(data,0.4);
title('bar3()');
subplot(122);
bar3(data,'grouped');
title('bar3h()');