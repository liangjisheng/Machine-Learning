clear all;clc;
f1=@(t)sin(t);
f2=@(t)cos(t);
f3=@(t) t;
figure('color',[1,1,1]);
subplot(121);
ezplot3(f1,f2,f3,[0,10]);%绘制三维曲线
subplot(122);
ezplot3(@sin,'cos','t',[0,6*pi]);%绘制三维曲线