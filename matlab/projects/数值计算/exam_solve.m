clear;
if 0
syms x;
s=solve('(x+2)^x=2','x')

% ΢�ַ���
S=dsolve('Dx=y,Dy=-x');
disp([blanks(12),'x',blanks(21),'y']),disp([S.x,S.y])
end

if 0
y=dsolve('y=x*Dy-(Dy)^2','x')
clf;hold on;
ezplot(y(2),[-6,6,-4,8],1); % �����
cc=get(gca,'Children'); % ȡ������ߵ�ͼ��
set(cc,'Color','r','LineWidth',5);  % ����⻭�ɴֺ���
for k=-2:0.5:2
    ezplot(subs(y(1),'C1',k),[-6,6,-4,8],1);    % ��ͨ��
end
hold off;title('\fontname{����}\fontsize{16}ͨ������')
end 

% �����ֵ����
y=dsolve('x*D2y-3*Dy=x^2','y(1)=0,y(5)=0','x');

% ����Ʒ��̵�ͨ�� f(n)=-3*f(n-1)-2*f(n-2)
% gs1=maple('rsolve(f(n)=-3*f(n-1)-2*f(n-2),f(k));')
% gs1=maple('rsolve','f(n)=-3*f(n-1)-2*f(n-2)','f(k)')

if 0
n=0:12;
y=1./abs(n-6);
plot(n,y,'r*','MarkerSize',20);
grid on

t1=(0:11)/11*pi;y1=sin(t1).*sin(9*t1);
t2=(0:100)/100*pi;y2=sin(t2).*sin(9*t2);
subplot(2,2,1),plot(t1,y1,'r.'),axis([0,pi,-1,1]),title('��ͼ(1)');
subplot(2,2,2),plot(t2,y2,'r.'),axis([0,pi,-1,1]),title('��ͼ(2)');
subplot(2,2,3),plot(t1,y1,t1,y1,'r.');
axis([0,pi,-1,1]),title('��ͼ(3)');
subplot(2,2,4),plot(t2,y2);
axis([0,pi,-1,1]),title('��ͼ(4)');
end
