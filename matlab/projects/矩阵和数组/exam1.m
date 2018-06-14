%{
A=zeros(2,5);   % 全0数组
A(:)=-4:5;      % 运用全元素赋值法获得A
L=abs(A)>3;     % 产生与A同维的逻辑数组
islogical(L);   % 判断L是否是逻辑数组
X=A(L);          % 把L中逻辑值1对应的A元素取出
Num=[1,0,0,0,1;0,0,0,0,1];  % 产生与L数组外表完全相同的“双精度数组”
N_L=Num==L;     % 加入Num与L数组相等，则N_L得1
c_N=class(Num);  % 用class指令检查Num的类属性
c_L=class(L);
%}

% A=[1:4;5:8];
% pow2(A);
% a=zeros(2,3);
% a(:)=(1:6);
% a=a*(1+i);
% a_a=a.';     % 数组转置，非共轭转置
% a_m=a';        % 矩阵转置，共轭转置

% a=[11,12,13;14,15,16;17,18,19];
% pa=poly(a)      % a的特征多项式
% ppa=poly2str(pa,'x')    % 以比较习惯的方式显示多项式

%{
s=pascal(4);
p=poly(s);
pp=poly2str(p,'x');
pa=polyval(p,s)     %独立变量取数组s元素是的多项式
pm=polyvalm(p,s)    %独立变量取矩阵s元素是的多项式
%}

% d=eye(3);
% diag(d); %d的对角元素
% diag(diag(d));  % 内diag取D的对角元，外diag利用一位数组生成对角阵
% repmat(d,1,3);  % 在水平方向铺放3个d矩阵

%{
a=-4:4;
A=reshape(a,3,3);
a1=diag(A,1);       %取A矩阵'第一上对角线'的元素
a2=diag(A,-1);      %取A矩阵'第一下对角线'的元素
flipud(A);          %上下对称交换
fliplr(A);          %左右对称交换
rot90(A);
%}

randn('state',1);
R=randn(3,6);
L=abs(R)<0.5 | abs(R)>1.5
R(L)=0;
R
s=(find(R==0))'
R(s)=111;
[ii,jj]=find(R<0);
disp('ii,jj');
disp(ii'),disp(jj')