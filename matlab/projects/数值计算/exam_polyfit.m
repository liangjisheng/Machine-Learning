% 多项式拟合
x=0:0.1:1;y=[2.1,2.3,2.5,2.9,3.2,3.3,3.8,4.1,4.9,5.4,5.8];
dy=0.15; % 元数据y的标准差
for n=1:6
    [a,S]=polyfit(x,y,n); % 计算拟合多项式系数
    A{n}=a; % 用元胞数组记录不同阶次多项式的系数
    da=dy*sqrt(diag(inv(S.R'*S.R)));  % 计算各系数的误差
    DA{n}=da'; % 记录不同阶次多项式系数的误差
    freedom(n)=S.df; % 记录自由度
    [ye,delta]=polyval(a,x,S); % 计算拟合多项式值的范围
    YE{n}=ye;   % 均值
    D{n}=delta; % 离差
    chi2(n)=sum((y-ye).^2)/dy/dy; %计算不同阶次的卡方量
end
Q=1-chi2cdf(chi2,freedom); % 用于判断拟合良好度
subplot(1,2,1),plot(1:6,abs(chi2-freedom),'b');
xlabel('阶次'),title('chi2与自由度');
subplot(1,2,2),plot(1:6,Q,'r',1:6,ones(1,6)*0.5);
xlabel('阶次'),title('Q与0.5线');
% figure; plot(x,y);
% 三阶多项式拟合情况图
figure;
plot(x,y,'b+');axis([0,1,1,6]); hold on;
errorbar(x,YE{3},D{3},'r'); hold off;
title('较适当的三阶拟合');
text(0.1,5.5,['chi2=' num2str(chi2(3)),'~',int2str(freedom(3))]);
text(0.1,5,['freedom=' int2str(freedom(3))]);
text(0.6,1.7,['Q=' num2str(Q(3)) '~0.5']);