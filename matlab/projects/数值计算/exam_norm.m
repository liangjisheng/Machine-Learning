clear;
%{
lambda=20;
x=0:50; yd_p=poisspdf(x,lambda);
yd_n=normpdf(x,lambda,sqrt(lambda));
plot(x,yd_n,'b-',x,yd_p,'r+');
text(30,0.07,'\fontsize{12} {\mu}={\lambda}=20');
%}

mu=3;sigma=0.5;
x=mu+sigma*[-3:-1,1:3]; yf=normcdf(x,mu,sigma); % yf为分布函数点
p=[yf(4)-yf(3),yf(5)-yf(2),yf(6)-yf(1)];
xd=1:0.1:5;yd=normpdf(xd,mu,sigma); % yd为密度函数点
% 为各区域填色进行准备
for k=1:3
    xx{k}=x(4-k):sigma/10:x(3+k);
    yy{k}=normpdf(xx{k},mu,sigma);
end
subplot(1,3,1),plot(xd,yd,'b');hold on;
fill([x(3),xx{1},x(4)],[0,yy{1},0],'g');
text(mu-0.5*sigma,0.3,num2str(p(1))),hold off;
subplot(1,3,2),plot(xd,yd,'b');hold on ;
fill([x(2),xx{2},x(5)],[0,yy{2},0],'g') 
text(mu-0.5*sigma,0.3,num2str(p(2))),hold off ;
subplot(1,3,3),plot(xd,yd,'b');hold on 
fill([x(1),xx{3},x(6)],[0,yy{3},0],'g') 
text(mu-0.5*sigma,0.3,num2str(p(3))),hold off