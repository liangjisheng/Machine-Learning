clear all;clc;
a=234.567;
b=single(a);%�����ȸ�����
c=double(a);%˫���ȶ�����
d1=int16(a);%ת��Ϊ�з�������
d2=uint16(a);%ת��Ϊ�޷�������
e1=[realmin('single') realmax('single')];%�����ȵ�ȡֵ��Χ
e2=[realmin('double') realmax('double')];%˫���ȵ�ȡֵ��Χ