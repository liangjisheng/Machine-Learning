clear all;clc;
score=[78,89,90,76,85,82,69,93]
scorelen=length(score)
scoremax=max(score)
scoremin=min(score)
figure('color',[1,1,1]);%建立图形窗口
bar(1:scorelen,score);%绘图
title('Math scores');