%{
rand('state',12);
A=rand(100,100)+1.e8;
x=ones(100,1);
b=A*x;  % Ax=b �뷽��һ��
cond(A);     % ����A��������
xi=inv(A)*b;
N=[6,8,10,12,14];
length(N);
%}

%{
A=[1,-3;2,2/3];
a=eig(A);   % A������ֵ
[V,D]=eig(A); % A���������ֵ��VΪ������������DΪ����ֵ���ɵĶԽ���
diag(A); % A�ĶԽ�Ԫ��
sin(A);
funm(A,'sin');
rank(A); % A����
na=norm(A); % A�ķ���
%}

%{
y=-1:0.1:1;
x=2*cos(asin(y));
[X,Y,Z]=cylinder(x,20); % �γ���ת����
surfnorm(X(:,11:21),Y(:,11:21),Z(:,11:21)); % �������ϻ�����
view([120,18]); % ���ƹ۲��
%}

%{
F=[1,2,3;4,5,6;7,8,9];
Dx=diff(F); % �����в��
Dx_2=diff(F,1,2);   % �����в�� ����2��ʾ�в��
[Fx,Fy]=gradient(F); % ���ݵ�Ĭ�ϲ���Ϊ1
[Fx_2,Fy_2]=gradient(F,0.5);    % ���ݵ㲽��Ϊ0.5
%}

y=inline('sin(t)^2*exp(-a*t)-b*abs(t)','t','a','b');
a=0.1;b=0.5;t=-10:0.01:10; %���Ա���������������������̫��
y_char=vectorize(y); %��y��д���ʺ�����������ʽ���˱���
Y=feval(y_char,t,a,b);  %�ڲ������ϼ��㺯��ֵ��
clf,plot(t,Y,'r');hold on,plot(t,zeros(size(t)),'k');  %���������
xlabel('t');ylabel('y(t)'),hold off 
zoom on % ��þֲ��Ŵ�ͼ
[tt,yy]=ginput(5);  % ������5�����²�ֵ
zoom off
% �󿿽�tt(4)�ľ�ȷ���
[t4,y4,exitflag]=fzero(y,tt(4),[],a,b);
% fzero�����õ�optionsȱʡ���ã����Ŀ��Ƽ��㾫�ȵ�����������
op=optimset('fzero');
op=optimset('tolx',0.01); % ����ֹ�������������õýϴ�
op.TolX