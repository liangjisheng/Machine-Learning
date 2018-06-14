% 定积分与不定积分
%syms x;
%f=x^2;
%F=int(f) %求f的原函数
syms x s;
f=2*x/(4*x^2+4*x+1);
F=int(f)

f1=1/(1+s)/(1+s^2);
F1=int(f1,s,0,inf)