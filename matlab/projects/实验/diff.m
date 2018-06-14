% 求导数，定积分和不定积分
%f=@(x)1+2*x-3*x.^2+4*x.^3-5*x.^4+6*x.^5;
%x=0:0.1:1;
%y=f(x);
%d=diff(y)/0.1;
%n=length(x);
%plot(x(1:n-1),d,'o');
%hold on
%x=0:0.05:1;
%plot(x,2-6*x+12*x.^2-20*x.^3+30*x.^4,'r');

syms x y;
y=log(2*x/sqrt(1+x^2));
dy=diff(y);
xx=[1:0.1:10];
yy=log(2*xx./sqrt(1+xx.^2));
plot(xx,yy);
xlabel('x');
ylabel('log(2*x/sqrt(1+x^2))')
gtext('log(2*x/sqrt(1+x^2))');