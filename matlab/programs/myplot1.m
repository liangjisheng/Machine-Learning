function [x0,y0]=myplot1(x,y,npts,angle,subdiv)%º¯ÊıÉùÃ÷
%MYPLOT plot a function.
%the first two input arguments are required;
%the other three have default values.
if nargin<5,subdiv=20;end
if nargin<4,angle=10;end
if nargin<3,npts=25;end
if nargout==0
    figure;
    plot(x,y);
else 
    x0=x;y0=y;
end