function barzzy(nn,xx,xmu,xstd)
clf
bar(xx,nn);hold on
Ylimit=get(gca,'YLim');
yy=0:Ylimit(2);
xxmu=xmu*size(yy); 
xxL=xxmu/xmu*(xmu-xstd); 
xxR=xxmu/xmu*(xmu+xstd); 
plot(xxmu,yy,'r','Linewidth',3)    %<9>
plot(xxL,yy,'rx','MarkerSize',8) 
plot(xxR,yy,'rx','MarkerSize',8),hold off