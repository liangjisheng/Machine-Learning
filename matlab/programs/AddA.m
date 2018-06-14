function [output]=AddA(input)%定义函数
%an example 
persistent A;%定义永久变量
if isempty(A)
    A=2;
end
A=A+input;
output=A;
end