if 0
a1=[1/3,pi/7,sqrt(5),pi+sqrt(5)];
a2=sym([1/3,pi/7,sqrt(5),pi+sqrt(5)]); % ��ӽ�����������ʾ
a3=sym([1/3,pi/7,sqrt(5),pi+sqrt(5)],'e'); % ���������������ʾ
a4=sym('[1/3,pi/7,sqrt(5),pi+sqrt(5)]'); % ����׼ȷ�ķ�����ֵ��ʾ

y=sym('2*sin(x)*cos(x)');
y=simple(y);% ����

syms fai1 fai2;
y1=simple(sin(fai1)*cos(fai2)-cos(fai1)*sin(fai2));
y1=simple(y1);

syms a11 a12 a21 a22;
A=[a11,a12;a21,a22];
DA=det(A);
IA=inv(A);
EA=eig(A); % ��������
end

syms A t tao w;
yf=int(A*exp(-i*w*t),t,-tao/2,tao/2);
yf=simple(yf);