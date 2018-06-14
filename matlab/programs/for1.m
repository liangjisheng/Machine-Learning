clear all;clc;
y=zeros(1,8);
g=zeros(1,3);
for i=1:8
    y(i)=sin(i/8);
end
y
for i=[2,4,6]
    disp(i);
end