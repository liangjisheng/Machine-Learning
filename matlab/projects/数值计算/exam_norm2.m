clear
%{
x=-2:0.05:2;
y=x;
[X,Y]=meshgrid(x,y); % ������������
F1=sin(X-Y);
F2=cos(X+Y);
F0=zeros(size(X));
% surf(X,Y,F1),xlabel('x'),ylabel('y');
% view([-31,62]);
% hold on
% surf(X,Y,F2),
% surf(X,Y,F0);
% shading interp;
% hold off

v=[-0.2,0,0.2];
contour(X,Y,F1,v); % ��F1��������λ��
hold on;
contour(X,Y,F2,v);
hold off
% [x0,y0]=ginput(2);  % ��ͼ��ȡ�����������
% disp([x0,y0]);
% ����fsolve��ȷ��
fun='[sin(x(1)-x(2)),cos(x(1)+x(2))]';
xy=fsolve(fun,[x0(2),y0(2)]);
% ����
fxy1=sin(xy(1)-xy(2));
fxy2=cos(xy(1)+xy(2));
disp([fxy1,fxy2])
%}

%{
x=-3:0.1:3;y=-2:0.1:4;
[X,Y]=meshgrid(x,y);
F=100*(Y-X.^2).^2+(1-X).^2;
contour3(X,Y,F,300); %��300���ȸ���
xlabel('x'),ylabel('y'),axis([-3,3,-2,4,0,inf]),view([161,22]);
hold on;
plot3(1,1,0,'.r','MarkerSize',20);
hold off;
%}

% syms x;
% I=int('exp(-x*x)','x',0,1);
% vpa(I)
% fun=inline('exp(-x.*x)','x');
% Isim=quad(fun,0,1);

% x=-3:0.1:3;
% f=exp(-x.^2);
% plot(x,f)

%{
x(:,1)=ones(10,1);
x(1,1)=100;x(10,1)=0.01;
rand('state',1); randn('state',1);   % ���ȷֲ�����̫�������������ʼ��
x(:,2)=rand(10,1);
x(:,3)=randn(10,1);
x(:,3)=2*abs(min(x(:,3)))+x(:,3);
moment1.arithmetic=mean(x);
moment1.median=median(x);
moment1.geometric=geomean(x);
moment1.harmmonic=harmmean(x);
moment2.standard=std(x);
moment2.variance=var(x);
moment2.absolute=mad(x);
moment2.range=range(x);
moment1,moment2
%}

randn('state',1),rand('state',31);
x=randn(100,1);y=rand(100,1);   % ������̫�ֲ��;��ȷֲ�ʵ������
% �۲���̫�������Ƶ��ֱ��ͼ�ڲ�ͬ����ֶ���ʱ�ı仯
% subplot(1,2,1),hist(x,7);
% subplot(1,2,2),histfit(x,20); % ����̫�����
n_y1=min(y):0.1:max(y);
n_y2=min(y):0.05:max(y);
subplot(1,2,1),hist(y,n_y1);    % �ϴ��������
subplot(1,2,2),hist(y,n_y2);    % ��С�������