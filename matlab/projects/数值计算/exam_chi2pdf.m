% 卡方分布
v=4;xi=0.9;x_xi=chi2inv(xi,v); % 设置置信水平为90% ，确定置信区间
x=0:0.1:15;yd_c=chi2pdf(x,v);
plot(x,yd_c,'b'),hold on;
xxf=0:0.1:x_xi;yyf=chi2pdf(xxf,v);
fill([xxf,x_xi],[yyf,0],'g');
text(x_xi*1.01,0.01,num2str(x_xi));
text(10,0.16,['\fontsize{16} x~{\chi}^2' '(4)']);
text(1.5,0.08,'\fontname{隶书}\fontsize{22}置信水平0.9')
hold off