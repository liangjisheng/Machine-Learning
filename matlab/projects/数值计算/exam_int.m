syms x y;
% ��������
f=int(cos(2*x)*cos(3*x));

a=int(x^2*log(x),x,1,exp(1));
eval(a); %���ű��ʽת������ֵ���ʽ 

% ���ػ���
f1=y^2/x^2;
b=int(int(f1,x,1/2,2),y,1,2);