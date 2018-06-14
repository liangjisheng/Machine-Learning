clear all;
n=200;
rand('state',1),,randn('state',2);
A=sprandsym(n,0.015,0.1,1); % ����200*200�������ϡ�����
subplot(1,2,1),spy(A,'b',10),title('Spy plot of matrix A');
subplot(1,2,2),d=symmmd(A); % ������С������
spy(A(d,d),'b',10),titile('Matrix A with Minimum degree ordering');
B=full(A); % ����A��ȫԪ����ʽ
% �Ƚ����������cholesky���Ƿֽ������ʱ��
format short e
tic,L1=chol(B);t1=toc; % ȫԪ���ǣ�cholesky�ֽ�ļ���ʱ��
tic,L2=chol(A);t2=toc/t1; % ϡ���ǣ�cholesky�ֽ�ļ���ʱ��
tic,L3=chol(A(d,d));t3=toc/t1; % ��С������ʱ��cholesky�ֽ�ļ���ʱ��
disp('      ȫԪ����        ϡ�����            ��С������'); 
disp([1,t2,t3]);