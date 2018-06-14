clear all;clc;
[fid,messgae]=fopen('chap.m','w+');%fid为文件标识
if fid==-1
    disp(message);
else
    fwrite(fid,'Good luck!','uint8');
end
fclose(fid);
[fid,message]=fopen('chap.m','r');
if fid==-1
    disp(message);
else
    a1=fread(fid);
    a1'
    disp(char(a1)');
end
fclose(fid);