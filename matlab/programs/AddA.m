function [output]=AddA(input)%���庯��
%an example 
persistent A;%�������ñ���
if isempty(A)
    A=2;
end
A=A+input;
output=A;
end