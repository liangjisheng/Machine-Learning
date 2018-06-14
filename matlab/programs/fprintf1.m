clear all;clc;
a='Hello,everyone!';
%打开或创建文件，fid为文件标识，message为出错信息
[fid,message]=fopen('ccc.txt','wt');
if fid==-1
    disp(message);%显示出错信息
else
    fprintf(fid,'%s',a);%写入数据a
    fclose(fid);
end
[fid,message]=fopen('ccc.txt','r');
if fid==-1
    disp(message);
else 
    a1=fscanf(fid,'%c')%读取文件
    frewind(fid);%将文件标识移到文件头
    a2=fscanf(fid,'%c',5)
    frewind(fid);
    a3=fscanf(fid,'%c',[4,4])
    frewind(fid);
    a4=fscanf(fid,'%s',4)
    fclose(fid);
end