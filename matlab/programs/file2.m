clear all;clc;
a=3:2:14
[fid,messgae]=fopen('chap2.bin','wt');%fid为文件标识
if fid==-1
    disp(message);
else
    fwrite(fid,a,'int32');
end
fclose(fid);
[fid,message]=fopen('chap2.bin','r');
if fid==-1
    disp(message);
else
    while ~feof(fid)  %判断文件是否结束
        a1=fread(fid,inf,'int32');
        a1=a1'
    end
    ftell(fid) %获取文件标识的位置
    frewind(fid);%将文件标识移到文件头
    ftell(fid)
end
fclose(fid);