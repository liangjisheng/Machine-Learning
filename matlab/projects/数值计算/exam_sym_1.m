clear;
if 0
a=1;b=2;c=3;d=4;
mn=[a,b;c,d];
mc='[a,b;c,d]';
ms=sym(mc);
sizemn=size(mn);sizemc=size(mc);sizems=size(ms);
cmn=class(mn);cmc=class(mc);cms=class(ms);
% ��isa�ж�ÿ�־������� ����1 ��ʾ��ȷ
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
expr1=collect(expr); % Ĭ�Ϻϲ�xͬ����ϵ��
expr2=collect(expr,'exp(-t)');% �ϲ�exp(-t)ͬ����ϵ��
syms a x;
f1=x^4-5*x^3+5*x^2+5*x-6;
factor(f1); % ��ʽ�ֽ�
f2=x^2-a^2;factor(f2);
factor(1025); % �����������ֽ�
factor(11223488);
f3=x^4-5*x^3+5*x^2+5*x-6;
horner(f3); % �Զ���ʽ����Ƕ�׷ֽ�
end

if 0
% ������Ԫ�صķ��ӣ���ĸ����ʽ
syms x; A=[3/2,(x^2+3)/(2*x-1)+3*x/(x-1);4/x^2,3*x+4];
[n,d]=numden(A);
pretty(simplify(A));
pretty(simplify(n./d))
% ��ʹ�������simplifyҲ���ܵõ������ʽ,ʹ��simple
f=(1/x^3+6/x^2+12/x+8)^(1/3); 
sfy1=simplify(f);sfy2=simplify(sfy1);
g1=simple(f);g2=simple(g1);
end

syms x; ff=cos(x)+sqrt(-sin(x)^2);
ssfy1=simplify(ff);ssfy2=simplify(ssfy1);
gg1=simple(ff);gg2=simple(gg1);
% �󷴺���
f=x^2;g=finverse(f);
fg=simple(compose(g,f));