% 下为背景灰度估计子程序
function backgray=estibackground(x)
global thr;
meanx=mean(x(:));
stdx=std(x(:));
minx=min(x(:));
backgray=max(meanx-thr*stdx,minx);
end