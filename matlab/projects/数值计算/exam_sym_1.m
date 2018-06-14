clear;
if 0
a=1;b=2;c=3;d=4;
mn=[a,b;c,d];
mc='[a,b;c,d]';
ms=sym(mc);
sizemn=size(mn);sizemc=size(mc);sizems=size(ms);
cmn=class(mn);cmc=class(mc);cms=class(ms);
% 用isa判断每种矩阵的类别 返回1 表示正确
isa(mn,'double');isa(mc,'char');isa(ms,'sym');
whos mn mc ms;
end

%{
syms a b x X Y;
k=sym('3');
z=sym('c*sqrt(delta)+y*sin(theta)');
expr=a*z*X+(b*x^2+k)*Y;
%}

if 0
expr=sym('(x^2+x*exp(-t)+1)*(x+exp(-t))');
expr1=collect(expr); % 默认合并x同幂项系数
expr2=collect(expr,'exp(-t)');% 合并exp(-t)同幂项系数
syms a x;
f1=x^4-5*x^3+5*x^2+5*x-6;
factor(f1); % 因式分解
f2=x^2-a^2;factor(f2);
factor(1025); % 正整数质数分解
factor(11223488);
f3=x^4-5*x^3+5*x^2+5*x-6;
horner(f3); % 对多项式进行嵌套分解
end

if 0
% 求矩阵各元素的分子，分母多项式
syms x; A=[3/2,(x^2+3)/(2*x-1)+3*x/(x-1);4/x^2,3*x+4];
[n,d]=numden(A);
pretty(simplify(A));
pretty(simplify(n./d))
% 即使多次运用simplify也不能得到最简形式,使用simple
f=(1/x^3+6/x^2+12/x+8)^(1/3); 
sfy1=simplify(f);sfy2=simplify(sfy1);
g1=simple(f);g2=simple(g1);
end

syms x; ff=cos(x)+sqrt(-sin(x)^2);
ssfy1=simplify(ff);ssfy2=simplify(ssfy1);
gg1=simple(ff);gg2=simple(gg1);
% 求反函数
f=x^2;g=finverse(f);
fg=simple(compose(g,f));