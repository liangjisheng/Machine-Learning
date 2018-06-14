% ctrl+r 注释一行代码
%{
x=linspace(0,2*pi,30);
y=sin(x);
z=cos(x);
plot(x,y,'r',x,z,'go')
%}

% 画连续函数
% ezplot('tan(x)',[-2*pi,2*pi])
% fplot('tan(x)',[-2*pi,2*pi])

% 二元函数
% 下面代码表示在x属于[-5,5],y属于[-4,4]之间 函数=0的图像
% ezplot('x^2+y^2',[-5,5,-4,4])
% ezplot('cos(5*t)','sin(5*t)',[-5,5])

% ezplot('sin(x)',[0,pi])

% ezplot('cos(t)^3','sin(t)^3',[0,2*pi])

% ezplot('exp(x)+sin(x*y)',[-2,0.5,0,2])

% ezplot('exp(2*x)+sin(3*x)',[-1,2])
%{
x=logspace(-1,2);
loglog(x,exp(x),'-s')
grid on
%}

% 参数方程 x=sint,y=cost,z=t的图形
% t=0:pi/50:10*pi;
% plot3(sin(t),cos(t),t);
% rotate3d  %旋转

%{
% 画出空间曲面的多条曲线
x=-3:0.1:3;
y=1:0.1:5;
% meshgrid(x,y)的作用是产生以向量x为列，向量y为行的矩阵
[X,Y]=meshgrid(x,y);
Z=(X+Y).^2;
plot3(X,Y,Z)
%}

%{
% 画空间曲面
x=-3:0.1:3;
y=1:0.1:5;
[X,Y]=meshgrid(x,y);
Z=(X+Y).^2;
surf(X,Y,Z);
shading flat % 将当前图形变得平滑
%}

%{
% 网格曲面
x=-3:0.1:3;
y=1:0.1:5;
[X,Y]=meshgrid(x,y);
Z=(X+Y).^2;
mesh(X,Y,Z)
%}

% [X,Y]=meshgrid(-3:.125:3);
% Z=peaks(X,Y);
% meshz(X,Y,Z)

%{
% 将曲面peaks 做成动画
[x,y,z]=peaks(30);
surf(x,y,z); % 绘制曲面
axis([-3,3,-3,3,-10,10]); %控制坐标范围
% moviein() 产生一个帧矩阵来存放动画中的帧
m=moviein(100);
for i=1:100
    % 改变观看图像的方位角和仰角
    view(-37.5+24*(i-1),30)
    % 函数getframe对当前的图像进行快照，
    m(:,i)=getframe;
end
% 函数movie() 按顺序回放个帧
movie(m)
%}

%{
x=-1:0.1:1;
for k=1:4
    y=x.^k;
    plot(x,y,'k');
    hold on;
end
hold off;
%}

