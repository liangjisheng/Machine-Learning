clear;
% 高维函数插值
if 0
randn('state',2);
x=-5:5;y=x;
[X,Y]=meshgrid(x,y);
zz=1.2*exp(-((X-1).^2+(Y-2).^2))-0.7*exp(-((X+2).^2+(Y+1).^2)); 
Z=-500+zz+randn(size(X))*0.05; % 使数据带标准差为0.05的随机误差
% surf(X,Y,Z); view (-25,25);
% 通过插值画出更精致的图形
xi=linspace(-5,5,50); yi=xi;
[XI,YI]=meshgrid(xi,yi);
ZI=interp2(X,Y,Z,XI,YI,'*cubic');
surf(XI,YI,ZI);view(-25,25);
end

if 0
% 样条插值
t=-5:0.5:5; w=exp(-abs(t));  % 采样数据
N0=length(t); tt=linspace(t(1),t(end),10*N0);% 产生重构函数用的自变量数据
ww=spline(t,w,tt);   % 进行重构 样条插值
error=max(abs(ww-exp(-abs(tt)))) % 检查误差
plot(tt,ww,'b'); hold on;
stem(t,w,'filled','r'); hold off; % 原采样数据杆图
end

x=(0:0.1:1)*2*pi;y=sin(x); % 获得样点数据
pp=spline(x,y); % 求PP形式的样条函数pp，它近似表示 x y sin =
int_pp=fnint(pp);  % 样条函数pp的数值不定积分int_pp，应近似 ) (x S 。
der_pp=fnder(pp);  % 样条函数pp的数值导函数der_pp，应近似y′。
% 在基础区间上，计算三个样条函数与理论值的最大误差
xx=(0:0.01:1)*2*pi; 
err_yy=max(abs(ppval(pp,xx)-sin(xx))) ;
err_int=max(abs(ppval(int_pp,xx)-(1-cos(xx)))) ;
err_der=max(abs(ppval(der_pp,xx)-cos(xx))) ;
% 计算y(x)在区间[1,2]上的定积分
DefiniteIntegral.bySpline=ppval(int_pp,[1,2])*[-1;1];
DefiniteIntegerl.byTheory=(1-cos(2))-(1-cos(1));
% 计算dy(3)/dx
Derivative.byTheory=cos(3);
Derivative.byDiference=(sin(3.01)-sin(3))/0.01; % 前向差分近似
DefiniteIntegerl;
Derivative;
% 绘制三个样条函数的图形
fnplt(pp,'b-');hold on;
fnplt(int_pp,'m:');
fnplt(der_pp,'r--');
hold off;
legend('y(x)','S(x)','dy/dx');
