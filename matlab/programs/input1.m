clear all;clc;
a=input('Do you want more? Y/N [Y]: ','s');
if isempty(a)
    a='Y'
end
b=input('Please input matlab expression: ','s');
c=eval(b)%计算b表达式的值