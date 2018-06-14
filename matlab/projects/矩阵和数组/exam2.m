%{
A=reshape(1:24,2,3,4);
dim_A=ndims(A);     % A的维数
size_A=size(A);     % A的大小
L_A=length(A);      % A的长度
a=0;
class(a);       % 判断a的数据类型
isnan(a);       % 判断非数

rand('state',0);    % 随机发生器为0
R=rand(2,5);
R(1,5)=NaN;
R(2,3)=NaN;
isnan(R);
Linear_index=find(isnan(R));    % 非数的单下标标识
[r_index,c_index]=ind2sub(size(R),Linear_index);    % 转换成全下标
disp('r_index c_index');
disp([r_index,c_index]);
%}

%{
a=[];
class(a);
isnumeric(a);
isempty(a);
which a;
ndims(a);
size(a);
a==0;
a~=0
%}

t=-2*pi:pi/10:2*pi;
y=sin(t)./t; %t=0时，将产生Nan
tt=t+(t==0)*eps;    % 使得在0出有合理的值
yy=sin(tt)./tt;
subplot(1,2,1),plot(t,y),axis([-7,7,-0.5,1.2]);
xlabel('t'),ylabel('y'),title('残缺图形');
subplot(1,2,2),plot(tt,yy),axis([-7,7,-0.5,1.2]);
xlabel('tt'),ylabel('yy'),title('正确图形');