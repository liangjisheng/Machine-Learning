clear all;clc;
%因式分解函数factor
%syms a;
%n=(1:9)';
%p=a.^n-1;
%f=factor(p);
%z=[p f]
%expand()表达式展开函数
%syms x y;
%a1=3*(x+y)^2
%a2=sin(x+y)
%a3=exp(3*x+2*y)
%a4=log(7*x)*log(5*y)
%z1=expand(a1)
%z2=expand(a2)
%z3=expand(a3)
%z4=expand(a4)
%表达式合并同类项函数collect()
%syms x y;
%z=x^3+y^3+3*x^2+3*y^2+x^2*y+y^2*x+2*x+2*y+4*x*y
%a1=collect(z,x)
%a2=collect(z,y)
%表达式通分函数numden
%syms x y a b;
%m=x/(a*y)+y/(b*x)
%[n,d]=numden(m)
%表达式化简函数
%syms x y a;
%f1=x*(x*(x-6)+11)-6
%f2=(1-x^2)/(1-x)
%f3=(1/a^3+6/a^2+12/a+8)^(1/3)
%f4=exp(x)*exp(y)
%f5=cos(x)^2+sin(x)^2
%z1=simplify(f1)
%z2=simplify(f2)
%z3=simplify(f3)
%z4=simplify(f4)
%z5=simplify(f5)
%以书写习惯显示函数
%syms x;
%f=x^3-6*x^2+11*x-6
%g=(x-1)*(x-2)*(x-3)
%h=-6+(11+(-6+x)*x)*x
%pretty(f)
%pretty(g)
%pretty(h)
%z1=collect(f)
%z2=collect(g)
%z3=collect(h)
%符号表达式的替换subs subexpr
%syms a b c d k n x y w t;
%f=a*x^n+b*y+k
%f1=subs(f,[a b k],[sin(t) log(w) c*exp(-d*t)])
%f2=subs(f,[n k],[5 pi])
%f3=subs(f,k,1:4)