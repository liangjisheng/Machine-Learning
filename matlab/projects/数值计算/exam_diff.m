syms x;
y1=diff(sin(x^3),x);
y2=diff(atan(log(x)),x);
y3=diff((1+1/x)^x,x);
y4=x^10+10^x+log(x);
diff(y4);

% y5��x�Ķ��׵�
y5=log(1+x);
a=diff(y5,x,2);
x=1;eval(a);   %����׵���x=1����ֵ