clear all;clc;
if mkdir('temp')       %�����ļ���
    disp('�ɹ������ļ���temp');
    if copyfile('chap.m','temp')
        disp('�ļ����Ƴɹ�');
    else 
        warning('�����ļ�ʧ��');
    end
    cd temp
    dir %�����ļ���
    cd ..%��ʾ�ļ����µ��ļ�
else
    warning('���ܴ����ļ���temp');
end
if rmdir('temp')%ɾ���ļ���
    disp('�ɹ�ɾ���ļ���temp');
else
    disp('û��ɾ���ļ���temp');
end