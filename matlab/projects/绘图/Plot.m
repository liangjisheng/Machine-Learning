% ctrl+r ע��һ�д���
%{
x=linspace(0,2*pi,30);
y=sin(x);
z=cos(x);
plot(x,y,'r',x,z,'go')
%}

% ����������
% ezplot('tan(x)',[-2*pi,2*pi])
% fplot('tan(x)',[-2*pi,2*pi])

% ��Ԫ����
% ��������ʾ��x����[-5,5],y����[-4,4]֮�� ����=0��ͼ��
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

% �������� x=sint,y=cost,z=t��ͼ��
% t=0:pi/50:10*pi;
% plot3(sin(t),cos(t),t);
% rotate3d  %��ת

%{
% �����ռ�����Ķ�������
x=-3:0.1:3;
y=1:0.1:5;
% meshgrid(x,y)�������ǲ���������xΪ�У�����yΪ�еľ���
[X,Y]=meshgrid(x,y);
Z=(X+Y).^2;
plot3(X,Y,Z)
%}

%{
% ���ռ�����
x=-3:0.1:3;
y=1:0.1:5;
[X,Y]=meshgrid(x,y);
Z=(X+Y).^2;
surf(X,Y,Z);
shading flat % ����ǰͼ�α��ƽ��
%}

%{
% ��������
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
% ������peaks ���ɶ���
[x,y,z]=peaks(30);
surf(x,y,z); % ��������
axis([-3,3,-3,3,-10,10]); %�������귶Χ
% moviein() ����һ��֡��������Ŷ����е�֡
m=moviein(100);
for i=1:100
    % �ı�ۿ�ͼ��ķ�λ�Ǻ�����
    view(-37.5+24*(i-1),30)
    % ����getframe�Ե�ǰ��ͼ����п��գ�
    m(:,i)=getframe;
end
% ����movie() ��˳��طŸ�֡
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

