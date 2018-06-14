if 0
syms a x;
f=a*sin(x)+5;
f1=subs(f,'sin(x)',sym('y'));
f2=subs(f,{a,x},{2,sym(pi/3)});
f3=subs(f,{a,x},{2,pi/3});
f4=subs(subs(f,a,2),x,0:pi/6:pi);
f5=subs(f,{a,x},{0:6,0:pi/6:pi});

phi=sym((1+sqrt(5))/2);
double(phi);
syms k t;f1=[t,k^3];f2=[1/(2*k-1)^2,(-1)^k/k];
s1=simple(symsum(f1)); % f1的自变量被确定为t
s2=simple(symsum(f2,1,inf));   % f2的自变量被确定为k
end

syms x positive;
px=0.5/log(0.5*x);
rsums(px);