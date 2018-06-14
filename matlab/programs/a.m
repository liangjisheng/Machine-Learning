clear all;clc;
a=234.567;
b=single(a);%单精度浮点型
c=double(a);%双精度读点数
d1=int16(a);%转换为有符号整数
d2=uint16(a);%转换为无符号整数
e1=[realmin('single') realmax('single')];%单精度的取值范围
e2=[realmin('double') realmax('double')];%双精度的取值范围