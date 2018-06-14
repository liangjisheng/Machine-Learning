clear all;clc;
[X,Y,Z]=peaks(-3:0.2:5);
figure('color',[1,1,1]);
subplot(121);
peaks;
subplot(122);
mesh(X,Y,Z);
axis tight;
title('mesh()');