clear all;clc;
a1=14
a2=18
b1=dec2bin(a1) %十进制转换为二进制
b2=dec2bin(a2)
c1=bitor(a1,a2) %逻辑或
c2=bitand(a1,a2) %逻辑与
c3=dec2bin(bitxor(a1,a2))%逻辑异或