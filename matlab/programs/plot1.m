clear all;clc;
x=0:0.01:1;
humps=((x-0.3).^2).^(-1)+((x-0.9).^2+0.04).^(-1)-6;
plot(x,humps,'k--');