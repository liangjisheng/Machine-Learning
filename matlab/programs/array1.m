clear all;clc;
score=[78,89,90,76,85,82,69,93]
scorelen=length(score)
scoremax=max(score)
scoremin=min(score)
figure('color',[1,1,1]);%����ͼ�δ���
bar(1:scorelen,score);%��ͼ
title('Math scores');