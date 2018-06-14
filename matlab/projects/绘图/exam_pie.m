clear;

if 0
% pie
a=[1,1.6,1.2,0.8,2.1];
ex=[1,0,1,0,0];
subplot(1,2,1),pie(a,ex),legend({'1','2','3','4','5'});
subplot(1,2,2),pie3(a,ex);
colormap(cool);
end

if 0
% 多边形的填充
n=10; %多边形的边数
dt=2*pi/n;t=0:dt:2*pi;
t=[t,t(1)]; %fill指令要求数据向量的首位重合，使图形封闭。
x=sin(t);y=cos(t);
fill(x,y,'c');axis off  %画填色多边形，隐去坐标轴。
ht=text(0,0,'\fontname{隶书}\fontsize{32}十边形'); %文字注释，得到图柄
set(ht,'Color','k','HorizontalAlignment','Center');% 依靠图柄设置属性
end

if 0
X=[0.5 0.5 0.5 0.5;0.5 0.5 0.5 0.5;0 1 1 0]; 
Y=[0.5 0.5 0.5 0.5;0.5 0.5 0.5 0.5;0 0 1 1]; 
Z=[1 1 1 1;0 0 0 0;0 0 0 0];C=[1 0 0 1;0 1 0 1;0 0 1 0]; 
fill3(X,Y,Z,C),view([-10 55]),colormap cool;
xlabel('x'),ylabel('y'),box on;grid on;
end

if 0
% 射线图compass 羽毛图feather
t=-pi/2:pi/12:pi/2;  %在[-90,90]
r=ones(size(t)); %单位半径
[x,y]=pol2cart(t,r); %极坐标转化为直角坐标
subplot(1,2,1),compass(x,y),title('Compass');
subplot(1,2,2),feather(x,y),title('Feather');
end

% 二维半图指令
[X,Y,Z]=peaks(40); % 获取peaks图形数据
n=4; % 登高线分级数
subplot(1,2,1),pcolor(X,Y,Z);%伪彩图
colormap jet,shading interp
hold on, C=contour(X,Y,Z,n,'k:'); %用黑虚线画等位线，并给出标识数据。
clabel(C) %随机标识法
zmax=max(max(Z));zmin=min(min(Z));caxis([zmin,zmax]) %决定色标尺的范围
colorbar; %画垂直色标尺
hold off,subplot(1,2,2);
[C,h,CF]=contourf(X,Y,Z,n,'k:'); %用黑虚线画填色等位线，并给出标识数据。
clabel(C,h); %沿线标识法 