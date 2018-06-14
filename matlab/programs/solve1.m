clear all;clc;
%求解二次方程，线性方程组，高次方程组
%syms a b c x y
%g1=solve(a*x^2+b*x+c)
%f2=solve(x^3+2*a*x*y-3*b*y^2,y)
%g3=solve('x*2^x-1')

%syms a b x y
%e1=sym('a*x+b*y-6=0')
%e2=sym('b*x+a*y-4=0')
%g1=solve(e1,e2)
%gx=g1.x
%gy=g1.y
%g2=solve(e1,e2,'a','b')
%ga=g2.a
%gb=g2.b

%syms x y z
%G=solve('x-2*y-4','x^2-2*x*y+y-z','x^2-y*z+z','x','y','z')
%[x1,y1,z1]=solve('x-2*y-4','x^2-2*x*y+y-z','x^2-y*z+z','x','y','z')
%x=G.x
%y=G.y
%z=G.z

%解微分方程dsolve
%syms x
%Y=dsolve('D2y+2*Dy+10*y=17*sin(x)','x')

%[x1,y1]=dsolve('Dx=y','Dy=-x','t')
%[x2,y2]=dsolve('Dx=y','Dy=-x','x(0)=3','y(0)=4','t')

%[x,y]=dsolve('Dx+Dy+3*x=cos(2*t)','D2y-4*Dx+3*y=sin(2*t)','t')