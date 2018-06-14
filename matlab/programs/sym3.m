clear all;clc;
%符合函数compose
%syms t x y z;
%f=t*x
%g=2*y^2+y+1
%t1=compose(f,g)求符号函数f(g(y)),结果返回t1
%t2=compose(g,f)求符号函数g(f(x)),结果返回t2
%t3=compose(f,g,z)求f(g(z))
%t4=compose(f,g,x,z)求f(g(z)),f的自变量为x
%t5=compose(f,g,x,y,z)求f(g(z)),f的自变量为x,g的自变量为z
%反函数finverse
%f1=sym('log(x)')
%f2=sym('t*e^x')
%g1=finverse(f1) 求f1默认自变量的反函数
%g2=finverse(f2,'x') 求f2指定自变量x的反函数
%g3=finverse(f2,'t')求f2指定自变量t的反函数

%syms a b c d;
%a=[a,b;c,d]
%b=sym('[e,f;g,h]')
%c=a+b
%d=a-b
%e=a*b
%f=a/b
%g=a\b

%a=sym([1 2 3;4 5 6;7 4 0])
%b=[1 2 3;4 5 6;7 4 0]
%c=det(a)
%d=det(b)

%求矩阵的相关值
%a=sym([-1,2,2;2,-1,-2;2,-2,-1])
%a_inv=inv(a)
%a_det=det(a)
%a_rank=rank(a)
%a_trace=trace(a)
%a_poly=poly(a)
%a_eig=eig(a)
%[A B]=eig(a)

%求极限
%syms x y
%f=3*x^2+4*y^2-x*y+6*x-y+11
%g=sin(x)/x
%h=1/(1-exp(x/(1-x)))
%f1=limit(f,x,0)
%f2=limit(f,y,0)
%g1=limit(g)
%g2=limit(g,inf)
%h1=limit(h,x,1,'right')
%h2=limit(h,x,1,'left')

%微分
%y=sym('x^2')
%dif_y1=diff(y)
%dif_y2=diff(y,2)

%x=sym('t^2/2')
%y=sym('1-t')
%dx_dt=diff(x)
%dy_dt=diff(y)
%dy_dx=dy_dt/dx_dt

%syms x y
%z=1+x*y
%dz_dx=diff(z,x)
%dz_dy=diff(z,y)

%y=sym('exp(5*x)*cos(1-x^2)')
%dy_dx1=diff(y)
%dy_dx2=diff(y,2)
%dy_dx3=diff(y,3)