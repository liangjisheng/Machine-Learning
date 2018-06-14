clear all;clc;
fid=fopen('chap.m','r');
s=' ';
%count=0;
while ~feof(fid)
    line=fgetl(fid);
    if isempty(line)||~ischar(line)
        break;
    end
    s=sprintf('%s%s\n',s,line);
 %   count=count+1;
end
%fprintf('%d lines\n',count);
disp(s);
fclose(fid);