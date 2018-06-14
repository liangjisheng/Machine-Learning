clear all;clc;
if mkdir('temp')       %创建文件夹
    disp('成功创建文件夹temp');
    if copyfile('chap.m','temp')
        disp('文件复制成功');
    else 
        warning('复制文件失败');
    end
    cd temp
    dir %进入文件夹
    cd ..%显示文件夹下的文件
else
    warning('不能创建文件夹temp');
end
if rmdir('temp')%删除文件夹
    disp('成功删除文件夹temp');
else
    disp('没有删除文件夹temp');
end