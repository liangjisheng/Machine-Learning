%{
t=0:pi/50:4*pi;
y0=exp(-t/3);
y=exp(-t/3).*sin(3*t);
plot(t,y,'-r',t,y0,':b',t,-y0,':b');
grid on
%}

% mkdir('d:\','my_dir');  % 在D盘上创建目录
% cd d:\my_dir            % 使d:\my_dir成为当前目录
% save saf x y z          % 选择内存中的x,y,z变量保存为saf.mat
% dir                     % 显示目录上的文件
% load saf x y z          % 把saf.m中的文件装入内存

% rand('state',0)           % 把均匀分布伪随机数发生器置为0状态
%{
x=rand(1,5);
x(3);
x([1,2,5]);
x(1:3);
x(3:end);
x(3:-1:1);
x(find(x>0.5));
x([1,2,3,4,5,5,4,3,2,1]);
x(3)=0;
x
x([1,4])=[1,1];
x
%}