clear all;clc;
%str1='Good,luck,';
%str2='everyone.';
%a=[str1,str2]
%b=char(str1,str2)
%c=ischar(a)
%[m,n]=size(b)
%s1=strcat(str1,str2)
%s2=strvcat(str2,str1)
str1='Good morning,Tom.'
str2='Nice to meet you.'
a=str1==str2
b=str1<str2
c=lt(str1,str2)
n1=strcmp(str1,str2)
n2=strncmp(str1,str2,7)%字符串的比较，前7个字符
n3=strncmpi(str1,str2,7)%字符串的比较，不区分大小写