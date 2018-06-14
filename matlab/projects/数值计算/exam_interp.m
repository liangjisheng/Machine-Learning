clear;
% ��ά������ֵ
if 0
randn('state',2);
x=-5:5;y=x;
[X,Y]=meshgrid(x,y);
zz=1.2*exp(-((X-1).^2+(Y-2).^2))-0.7*exp(-((X+2).^2+(Y+1).^2)); 
Z=-500+zz+randn(size(X))*0.05; % ʹ���ݴ���׼��Ϊ0.05��������
% surf(X,Y,Z); view (-25,25);
% ͨ����ֵ���������µ�ͼ��
xi=linspace(-5,5,50); yi=xi;
[XI,YI]=meshgrid(xi,yi);
ZI=interp2(X,Y,Z,XI,YI,'*cubic');
surf(XI,YI,ZI);view(-25,25);
end

if 0
% ������ֵ
t=-5:0.5:5; w=exp(-abs(t));  % ��������
N0=length(t); tt=linspace(t(1),t(end),10*N0);% �����ع������õ��Ա�������
ww=spline(t,w,tt);   % �����ع� ������ֵ
error=max(abs(ww-exp(-abs(tt)))) % ������
plot(tt,ww,'b'); hold on;
stem(t,w,'filled','r'); hold off; % ԭ�������ݸ�ͼ
end

x=(0:0.1:1)*2*pi;y=sin(x); % �����������
pp=spline(x,y); % ��PP��ʽ����������pp�������Ʊ�ʾ x y sin =
int_pp=fnint(pp);  % ��������pp����ֵ��������int_pp��Ӧ���� ) (x S ��
der_pp=fnder(pp);  % ��������pp����ֵ������der_pp��Ӧ����y�䡣
% �ڻ��������ϣ�����������������������ֵ��������
xx=(0:0.01:1)*2*pi; 
err_yy=max(abs(ppval(pp,xx)-sin(xx))) ;
err_int=max(abs(ppval(int_pp,xx)-(1-cos(xx)))) ;
err_der=max(abs(ppval(der_pp,xx)-cos(xx))) ;
% ����y(x)������[1,2]�ϵĶ�����
DefiniteIntegral.bySpline=ppval(int_pp,[1,2])*[-1;1];
DefiniteIntegerl.byTheory=(1-cos(2))-(1-cos(1));
% ����dy(3)/dx
Derivative.byTheory=cos(3);
Derivative.byDiference=(sin(3.01)-sin(3))/0.01; % ǰ���ֽ���
DefiniteIntegerl;
Derivative;
% ������������������ͼ��
fnplt(pp,'b-');hold on;
fnplt(int_pp,'m:');
fnplt(der_pp,'r--');
hold off;
legend('y(x)','S(x)','dy/dx');
