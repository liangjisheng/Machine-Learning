clear all;clc;
a='Hello,everyone!';
%�򿪻򴴽��ļ���fidΪ�ļ���ʶ��messageΪ������Ϣ
[fid,message]=fopen('ccc.txt','wt');
if fid==-1
    disp(message);%��ʾ������Ϣ
else
    fprintf(fid,'%s',a);%д������a
    fclose(fid);
end
[fid,message]=fopen('ccc.txt','r');
if fid==-1
    disp(message);
else 
    a1=fscanf(fid,'%c')%��ȡ�ļ�
    frewind(fid);%���ļ���ʶ�Ƶ��ļ�ͷ
    a2=fscanf(fid,'%c',5)
    frewind(fid);
    a3=fscanf(fid,'%c',[4,4])
    frewind(fid);
    a4=fscanf(fid,'%s',4)
    fclose(fid);
end