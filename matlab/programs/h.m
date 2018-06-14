clear all;clc;
f1=@sin;%函数句柄
s1=func2str(f1);%将函数句柄转为字符串
f2=str2func(s1);%将字符串转换为函数句柄
isa(f1,'function_handle');%判断f1是否是函数句柄
isequal(f1,f2);
functions(f1);%获取f1函数句柄的详细信息