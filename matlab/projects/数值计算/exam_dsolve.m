% 解微分方程
% dy/dx=y+x;
% y(0)=1;
dsolve('Dy=x+y','y(0)=1','x');

% 求微分方程的通解
dsolve('Dy+2*y/x=sin(3*x)/(x^2)','x')