function [nn,xx,xmu,xstd]=histzzy(x)
xmu=mean(x);
xstd=std(x);
[nn,xx]=hist(x); % ����Ƶ���ֲ�ֱ��ͼ
if nargout==0
    barzzy(nn,xx,xmu,xstd);
end