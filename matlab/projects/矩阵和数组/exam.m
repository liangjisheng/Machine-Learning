%{
t=0:pi/50:4*pi;
y0=exp(-t/3);
y=exp(-t/3).*sin(3*t);
plot(t,y,'-r',t,y0,':b',t,-y0,':b');
grid on
%}

% mkdir('d:\','my_dir');  % ��D���ϴ���Ŀ¼
% cd d:\my_dir            % ʹd:\my_dir��Ϊ��ǰĿ¼
% save saf x y z          % ѡ���ڴ��е�x,y,z��������Ϊsaf.mat
% dir                     % ��ʾĿ¼�ϵ��ļ�
% load saf x y z          % ��saf.m�е��ļ�װ���ڴ�

% rand('state',0)           % �Ѿ��ȷֲ�α�������������Ϊ0״̬
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