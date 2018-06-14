function varargout = ringzy(r,varargin) 
%RINGZY   Plot a ring and calculate the area of the ring. 
%  r    基圆半径 
% 调用格式 
% [x1,y1,x2,y2,s1,s2]=ringzy(r,r2,'PropertyName','PropertyValue',...) 
%   （1）无输出时，绘圆或环。 
%   （2）有输出时，不绘图。 
%     (x1,y1),(x2,y2)分别是两个圆的坐标点； 
%     s1是基圆面积； 
%     s2为正值时，表示内环面积；为负值时，表示外环面积。 
vin=length(varargin);Nin=vin+1;    %<11> 
error(nargchk(1,Nin,nargin))     %检查输入变量数目是否合适 
if nargout>6   %检查输出变量数目是否合适 
error('Too many output arguments') 
end 
t=0:pi/20:2*pi;x=r*exp(i*t);s=pi*r*r; 
if nargout==0 
switch Nin 
case 1 
plot(x,'b') 
case 2 
r2=varargin{1};    %<22>
x2=r2*exp(i*t); 
plot(x,'b');hold on ;plot(x2,'b');hold off 
otherwise 
r2=varargin{1};    %<26>
x2=r2*exp(i*t); 
plot(x,varargin{2:end});hold on   %利用元胞数组设置对象属性  <28> 
plot(x2,varargin{2:end});hold off  %利用元胞数组设置对象属性  <29>
end; 
axis('square') 
else
varargout{1}=real(x);varargout{2}=imag(x);    %<33>
varargout{5}=pi*r*r;varargout{6}=[];   %<34>
if Nin>1 
r2=varargin{1};    %<36>
x2=r2*exp(i*t); 
varargout{3}=real(x2);varargout{4}=imag(x2);   %<38>
varargout{6}=pi*(r^2-r2^2);   %<39>
end; 
end 