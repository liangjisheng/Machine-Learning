clear all;clc;
%积分函数int
syms x y z
f=2*x^2*y+3*y-5*z+8
%一重不定积分
fint=int(f)
fintx=int(f,x)
finty=int(f,y)
fintz=int(f,z)
%定积分
fintx1=int(f,x,-1,1)
finty1=int(f,y,-1,1)
fintz1=int(f,z,-1,1)
%二重不定积分
fintxy=int(int(f,x),y)
fintxz=int(int(f,x),z)
fintyz=int(int(f,y),z)
%三重积分
fintxyz=int(int(int(f,x),y),z)