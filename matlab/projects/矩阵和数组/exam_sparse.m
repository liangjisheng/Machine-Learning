clear all;
n=200;
rand('state',1),,randn('state',2);
A=sprandsym(n,0.015,0.1,1); % 建立200*200随机正定稀疏矩阵
subplot(1,2,1),spy(A,'b',10),title('Spy plot of matrix A');
subplot(1,2,2),d=symmmd(A); % 采用最小度排序法
spy(A(d,d),'b',10),titile('Matrix A with Minimum degree ordering');
B=full(A); % 给出A的全元素形式
% 比较三个矩阵的cholesky三角分解的运算时间
format short e
tic,L1=chol(B);t1=toc; % 全元素是，cholesky分解的计算时间
tic,L2=chol(A);t2=toc/t1; % 稀疏是，cholesky分解的计算时间
tic,L3=chol(A(d,d));t3=toc/t1; % 最小度排序时，cholesky分解的计算时间
disp('      全元素阵        稀疏矩阵            最小排序阵'); 
disp([1,t2,t3]);