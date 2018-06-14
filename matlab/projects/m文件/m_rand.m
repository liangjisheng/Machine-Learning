% randn(m,n) 产生均值为0，方差为1正态分布的m*n的矩阵
a=randn(100000,1); 
b=randn(3,4);
hist(a,100); % 画直方图
% 产生均值为0.6，方差为0.1的5*5的随机矩阵
x1=0.6+sqrt(0.1)*randn(5);
x2=normrnd(0.6,0.1,5,5); % 产生正太分布，指定均值和方差
s=randn('state'); % 保存当前状态
u1=randn(1,100);
randn('state',s); % 恢复状态
u2=randn(1,100);
if u1==u2
    disp('u1 equal u2');
end
c=rand(1,10); % 生成0-1之间均匀分布的随机矩阵
% d=randi(iMax,1,10); % 在闭区间(0,iMax)生成1*10的伪随机数整数
d1=randi([5,10],1,10); % 在闭区间[5,10]生成1*10的伪随机数整数