clear all;clc;
%级数symsum
%syms k
%sum_f1=symsum(1/k^2,1,inf)
%r1=double(sum_f1)
%sum_10=symsum(1/k^2,1,10)
%r2=double(sum_10)
%sum_9=symsum(k^2,1,9)

%泰勒展开式taylor
%f1=sym('sin(z)')
%f2=sym('exp(z)')
%f3=sym('exp(z)*sin(z)')
%对f1和f2进行7阶泰勒级数展开
%g1=taylor(f1,8)
%g2=taylor(f2,8)
%g3=g1*g2
%g3_p=expand(g3)