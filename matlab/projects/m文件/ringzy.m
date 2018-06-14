function varargout = ringzy(r,varargin) 
%RINGZY   Plot a ring and calculate the area of the ring. 
%  r    ��Բ�뾶 
% ���ø�ʽ 
% [x1,y1,x2,y2,s1,s2]=ringzy(r,r2,'PropertyName','PropertyValue',...) 
%   ��1�������ʱ����Բ�򻷡� 
%   ��2�������ʱ������ͼ�� 
%     (x1,y1),(x2,y2)�ֱ�������Բ������㣻 
%     s1�ǻ�Բ����� 
%     s2Ϊ��ֵʱ����ʾ�ڻ������Ϊ��ֵʱ����ʾ�⻷����� 
vin=length(varargin);Nin=vin+1;    %<11> 
error(nargchk(1,Nin,nargin))     %������������Ŀ�Ƿ���� 
if nargout>6   %������������Ŀ�Ƿ���� 
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
plot(x,varargin{2:end});hold on   %����Ԫ���������ö�������  <28> 
plot(x2,varargin{2:end});hold off  %����Ԫ���������ö�������  <29>
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