clear all;clc;
a=[2,3,4;4,6,8]
b=[1,2;3,4;5,6]
try
    c=[a;b];
catch 
    disp(lasterr);
end