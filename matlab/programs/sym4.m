clear all;clc;
%���ֺ���int
syms x y z
f=2*x^2*y+3*y-5*z+8
%һ�ز�������
fint=int(f)
fintx=int(f,x)
finty=int(f,y)
fintz=int(f,z)
%������
fintx1=int(f,x,-1,1)
finty1=int(f,y,-1,1)
fintz1=int(f,z,-1,1)
%���ز�������
fintxy=int(int(f,x),y)
fintxz=int(int(f,x),z)
fintyz=int(int(f,y),z)
%���ػ���
fintxyz=int(int(int(f,x),y),z)