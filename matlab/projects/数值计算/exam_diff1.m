syms x y;
z=exp(2*x)*(x+y^2+2*y);
a1=diff(z,x);
b1=diff(z,y);
a2=diff(z,x,2);
b2=diff(z,y,2);
c=diff(a1,x);   % c��a2��ͬ

%���0��
fzero('3*x^5-x^4+2*x^3+x^2+3',0);
%��ֵ��
[x,f]=fminbnd('3*x^5-x^4+2*x^3+x^2+3',-1,2);

%�����ڵ�(1,-1,0)��������Сֵ
%[X,FVAL]=FMINSEARCH('x(1)^2+2.5*sin(x(2))-x(3)*x(1)*x(2)^2',[1,-1,0])