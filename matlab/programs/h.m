clear all;clc;
f1=@sin;%�������
s1=func2str(f1);%���������תΪ�ַ���
f2=str2func(s1);%���ַ���ת��Ϊ�������
isa(f1,'function_handle');%�ж�f1�Ƿ��Ǻ������
isequal(f1,f2);
functions(f1);%��ȡf1�����������ϸ��Ϣ