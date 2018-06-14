clear all;clc;
%c={'China','Good morning';[1:3;2:4;3:5],20} %建立单元数组
%a1=c{1,1}  %获取单元数组中的值
%a2=c{1,2}
%a3=c{2,1}
%c{1,2}=[] %删除单元数组的值

%建立单元数组，各个元素为空
%c=cell(2,3)
%修改单元数组中的值
%c{1,1}=zeros(2)
%c{1,2}='hello'
%c{2,3}=100

c={'hello',10;eye(3),'good'}
c{1,2}=20
a=c(1,:) %显示c单元数组的第一行
%c(:,2)=[] 删除c的第二行
celldisp(c)
celldisp(c,'myname')