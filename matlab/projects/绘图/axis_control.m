clear;
if 0
t=0:2*pi/99:2*pi; 
x=1.15*cos(t);y=3.25*sin(t); %y为长轴，x为短轴
subplot(2,3,1),plot(x,y),axis normal,grid on, 
title('Normal and Grid on') 
subplot(2,3,2),plot(x,y),axis equal,grid on,title('Equal') 
subplot(2,3,3),plot(x,y),axis square,grid on,title('Square') 
subplot(2,3,4),plot(x,y),axis image,box off,title('Image and Box off') 
subplot(2,3,5),plot(x,y),axis image fill,box off 
title('Image and Fill') 
subplot(2,3,6),plot(x,y),axis tight,box off,title('Tight')
end

if 0
clf;t=6*pi*(0:100)/100;y=1-exp(-0.3*t).*cos(0.7*t); 
tt=t(find(abs(y-1)>0.05));ts=max(tt); %<2> 
subplot(1,2,1),plot(t,y,'r-','LineWidth',3),grid on %<3> 
axis([0,6*pi,0.6,max(y)]) %<4> 
title('y=1–exp(-alpha*t)*cos(omega*t)') %<5> 
text(11,1.25,'alpha=0.3');text(11,1.15,'omega=0.7') 
hold on;plot(ts,0.95,'bo','MarkerSize',10);hold off %<7> 
text(ts+1.5,0.95,['ts=' num2str(ts)]) 
xlabel('t -->'),ylabel('y -->') %<9> 
subplot(1,2,2),plot(t,y,'r-','LineWidth',3) %<10> 
axis([-inf,6*pi,0.6,inf]) %<11> 
set(gca,'Xtick',[2*pi,4*pi,6*pi],'Ytick',[0.95,1,1.05,max(y)]) %<12> 
grid on %<13> 
title('\it y = 1 - e^{ -\alphat}cos{\omegat}') %<14> 
text(13.5,1.2,'\fontsize{12}{\alpha}=0.3') %<15> 
text(13.5,1.1,'\fontsize{12}{\omega}=0.7') %<16> 
hold on;plot(ts,0.95,'bo','MarkerSize',10);hold off %<17> 
cell_string{1}='\fontsize{12}\uparrow'; %<18> 
cell_string{2}='\fontsize{16} \fontname{隶书}镇定时间'; %<19> 
cell_string{3}='\fontsize{6} '; %<20> 
cell_string{4}=['\fontsize{14}\rmt_{s} = ' num2str(ts)]; %<21> 
text(ts,0.85,cell_string) %<22> 
xlabel('\fontsize{14} \bft \rightarrow') %<23> 
ylabel('\fontsize{14} \bfy \rightarrow')
end

% t=0:pi/50:2*pi; y=sin(t);plot(t,y);axis([0,2*pi,-1.2,1.2]);
% text(pi/2,1,'\fontsize{16}\leftarrow\itsin(t)\fontname{隶书}极大值');

% t=2*pi*(0:20)/20;y=cos(t).*exp(-0.4*t);
% stem(t,y,'g');hold on;
% stairs(t,y,'r');hold off

if 0
% 双纵坐标图
dx=0.1;x=0:dx:4; y=x.*sin(x); 
s=cumtrapz(y)*dx; % 梯形法求累计积分
plotyy(x,y,x,s); text(0.5,0,'\fontsize{14}\ity=xsinx');
sint='{\fontsize{16}\int_{\fontsize{8}0}^{   x}}';
text(2.5,3.5,['\fontsize{14}\its=',sint,'\fontsize{14}\itxsinxdx']);
end

if 0
t=(pi*(0:1000)/1000)'; 
y1=sin(t);y2=sin(10*t);y12=sin(t).*sin(10*t); 
subplot(2,2,1),plot(t,y1);axis([0,pi,-1,1]);
subplot(2,2,2),plot(t,y2);axis([0,pi,-1,1]);
subplot('position',[0.2,0.05,0.6,0.45]);
plot(t,y12,'b-',t,[y1,-y1],'r:');axis([0,pi,-1,1]);
end

if 0
t=(0:0.02:2)*pi; x=sin(t);y=cos(t);z=cos(2*t);
plot3(x,y,z,'b-',x,y,z,'bd');
view([-82,58]),box on,legend('链','宝石');
end

x=-4:4;y=x; [X,Y]=meshgrid(x,y);
Z=X.^2+Y.^2;
surf(X,Y,Z); hold on,colormap(hot);
stem3(X,Y,Z,'bo'); % 用来表现在格点上计算函数值