clear all;clc;
f=@(x,y) sqrt(1+x.^2+y.^2);
figure('color',[1,1,1]);
subplot(121);
ezsurf(f,[-5,5,-2*pi,2*pi]);
subplot(122);
ezsurf('y./(1+x.^2+y.^2)',[-5,5,-2*pi,2*pi]);