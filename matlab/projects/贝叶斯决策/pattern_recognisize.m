a=[1,0;1,1;0,1;-1,1;-1,0;0,-1;1,-2;0,-2;-1,-2]
A=a;
w1=A(1:5,:);
w2=A(6:9,:);
plot(w1(:,1),w1(:,2),'*');
hold on 
plot(w2(:,1),w2(:,2),'r+');
axis([-2,2,-3,2]);
mu1=mean(w1);
mu2=mean(w2);
sigma1=cov(w1);
sigma2=cov(w2);
syms x1 x2
x=[x1;x2];
gx=1/2*(x-mu1').'*inv(sigma1)*(x-mu1')-1/2*(x-mu2').'*inv(sigma2)*(x-mu2')+1/2*log(det(sigma1)/det(sigma2))-log(5/4);
x1=0;x2=0;
eval(gx); % 将[0,0]代入gx求判别函数的大小
ezplot(gx,[-20,20,-30,20]);
axis([-5,5,-5,5]); % 修改坐标轴