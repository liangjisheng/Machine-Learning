clear all;clc;
%a=sym('a');创建符号常量
%b=sym('b');
%c=sym('c');
%syms a b c;创建多个符号变量，与以上三行代码等价
%f='cos(3x)+sin(x)'创建符号表达式
%e='a*x^2+bx+c=0'
%f1=sym('a*x^2+b*x+c')利用sym函数创建符号表达式
%y1=sym(8)*sym('x').^sym(2)-sym(3)*sym('x')+sym(6)

%sym('x')
%y='sin(x^2)+x^5+3*x+3^x=5'
%符号矩阵的创建
%a1=sym('[1/s+x,sin(x),cos(x)^2/(b+x);9,exp(x^2+y^2),log(tanh(y))]')
%将数值矩阵转换为符号矩阵
%b=[2/3,sqrt(2),0.222;1.4,1/0.23,log(3)]
%a3=sym(b)
%利用赋值语句创建符号矩阵
%x=sym('x')
%n=4
%a4=x.^((0:n)'*(0:n))
%syms x;
%y1=sym(x^2-3*x+4)
%y2=sym(2*x-1)
%z1=y1+y2
%z2=y1*y2
%z3=y1./y2
%z4=y1.^y2

%z=1.0e-17
%x=1.0e+3
%digits(14)参数14为有效数字，设定计算精度
%y1=vpa(x*z+1)进行计算，返回结果y1
%digits(20)
%y2=vpa(x*z+1)

%a=pi
%digits(16)设置精度为16位，系统默认为32位
%b=vpa('pi')显示pi的值在当前精度下
%c=vpa('pi',50)设置精度为50位，显示pi的值