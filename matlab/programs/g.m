clear all;clc;
f1=@sin;%函数句柄,相当于C++中的函数指针
t=0:pi/50:pi;
f1(t);
f2=@plot;
f2(t,f1(t),'r');