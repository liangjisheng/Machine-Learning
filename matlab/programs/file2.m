clear all;clc;
a=3:2:14
[fid,messgae]=fopen('chap2.bin','wt');%fidΪ�ļ���ʶ
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
    while ~feof(fid)  %�ж��ļ��Ƿ����
        a1=fread(fid,inf,'int32');
        a1=a1'
    end
    ftell(fid) %��ȡ�ļ���ʶ��λ��
    frewind(fid);%���ļ���ʶ�Ƶ��ļ�ͷ
    ftell(fid)
end
fclose(fid);