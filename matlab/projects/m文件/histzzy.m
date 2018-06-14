function [nn,xx,xmu,xstd]=histzzy(x)
xmu=mean(x);
xstd=std(x);
[nn,xx]=hist(x); % 绘制频数分布直方图
if nargout==0
    barzzy(nn,xx,xmu,xstd);
end