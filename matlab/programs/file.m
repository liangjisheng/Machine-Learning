clear all;clc;
[fid,message]=fopen('chap.m');
if fid==-1
    disp(message);
else
    while 1
        tline=fgetl(fid);
        if ~ischar(tline)
            break;
        end
        disp(tline);
    end
    fclose(fid);
end