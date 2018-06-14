%{
rand('state',12);
A=rand(100,100)+1.e8;
x=ones(100,1);
b=A*x;  % Ax=b 与方程一致
cond(A);     % 矩阵A的条件数
xi=inv(A)*b;
N=[6,8,10,12,14];
length(N);
%}

%{
A=[1,-3;2,2/3];
a=eig(A);   % A的特征值
[V,D]=eig(A); % A矩阵的特征值，V为特征列向量，D为特征值构成的对角阵
diag(A); % A的对角元素
sin(A);
funm(A,'sin');
rank(A); % A的秩
na=norm(A); % A的范数
%}

%{
y=-1:0.1:1;
x=2*cos(asin(y));
[X,Y,Z]=cylinder(x,20); % 形成旋转曲面
surfnorm(X(:,11:21),Y(:,11:21),Z(:,11:21)); % 在曲面上画法线
view([120,18]); % 控制观察角
%}

%{
F=[1,2,3;4,5,6;7,8,9];
Dx=diff(F); % 相邻行差分
Dx_2=diff(F,1,2);   % 相邻列差分 输入2表示列差分
[Fx,Fy]=gradient(F); % 数据点默认步长为1
[Fx_2,Fy_2]=gradient(F,0.5);    % 数据点步长为0.5
%}

y=inline('sin(t)^2*exp(-a*t)-b*abs(t)','t','a','b');
a=0.1;b=0.5;t=-10:0.01:10; %对自变量采样，采样步长不宜太大。
y_char=vectorize(y); %把y改写成适合数组运算形式，乘变点乘
Y=feval(y_char,t,a,b);  %在采样点上计算函数值。
clf,plot(t,Y,'r');hold on,plot(t,zeros(size(t)),'k');  %画坐标横轴
xlabel('t');ylabel('y(t)'),hold off 
zoom on % 获得局部放大图
[tt,yy]=ginput(5);  % 用鼠标获5个零点猜测值
zoom off
% 求靠近tt(4)的精确零点
[t4,y4,exitflag]=fzero(y,tt(4),[],a,b);
% fzero所采用的options缺省设置，更改控制计算精度的相对误差设置
op=optimset('fzero');
op=optimset('tolx',0.01); % 把终止计算相对误差设置得较大
op.TolX