B=xlsread('data.xlsx');
b=B;
w1=B(1:10,:);
w2=B(11:20,:);
w3=B(21:30,:);
mu1=mean(w1);
mu2=mean(w2);
mu3=mean(w3);
sigma1=cov(w1);
sigma2=cov(w2);
sigma3=cov(w3);
syms x1 x2 x3 
x=[x1;x2;x3];
gx1=1/2*(x-mu1').'*inv(sigma1)*(x-mu1')-1/2*log(det(sigma1))+log(1/2);
gx2=1/2*(x-mu2').'*inv(sigma2)*(x-mu2')-1/2*log(det(sigma2))+log(1/2);
gx3=1/2*(x-mu3').'*inv(sigma3)*(x-mu3')-1/2*log(det(sigma3));
x1=5;x2=8;x3=5;
% 将[0,0]代入gx求判别函数的大小
[max_value,index]=max([eval(gx1),eval(gx2),eval(gx3)]);
sprintf('(%g %g %g)属于第%g类',x1,x2,x3,index)