clear;
F1=inline('sin(rho)/rho')  %��һ�ָ�ʽ������������ 
f1=F1(2)
FF1=vectorize(F1) %�������ڡ��������㡱����������
xx=[0.5,1,1.5,2];ff1=FF1(xx)
G2=inline('a*exp(x(1))*cos(x(2))','a','x'),G2(2,[-1,pi/3])

Y2=inline('[x(1)^2;3*x(1)*sin(x(2))]') 
argnames(Y2) %�۲�������������������
x=[4,pi/6]; %��������ĸ�ֵ
y2=Y2(x) %���������� 