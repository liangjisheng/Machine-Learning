syms x y;
% 不定积分
f=int(cos(2*x)*cos(3*x));

a=int(x^2*log(x),x,1,exp(1));
eval(a); %符号表达式转换成数值表达式 

% 二重积分
f1=y^2/x^2;
b=int(int(f1,x,1/2,2),y,1,2);