clear all;clc;
z1=3+4i;
z2=3+4j;
z3=complex(1,4);%利用complex创建复数
z4=complex(2:4,3:5);

a1=real(z1);%复数实部
a2=imag(z1);%复数虚部
a3=abs(z1);%复数模
a4=angle(z1);%复数幅角
a5=conj(z1);%求共轭复数
a6=isreal(z1);%判断z1是否是实数