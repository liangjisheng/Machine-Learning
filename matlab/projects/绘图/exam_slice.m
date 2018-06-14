clear;
if 0
%以下指令用切面上的色彩表现射流速度
[X,Y,Z,V]=flow; %取4个(50*25*25的射流数据矩阵，V是射流速度。
x1=min(min(min(X)));x2=max(max(max(X))); %取x坐标上下限
y1=min(min(min(Y)));y2=max(max(max(Y))); %取y坐标上下限
z1=min(min(min(Z)));z2=max(max(max(Z))); %取z坐标上下限
sx=linspace(x1+1.2,x2,5); %确定5个垂直x轴的切面坐标
sy=0; %在y=0处，取垂直y轴的切面
sz=0; %在z=0处，取垂直z轴的切面
slice(X,Y,Z,V,sx,sy,sz); %画切片图
view([-12,30]);shading interp;colormap jet;axis off;colorbar;

% 以下指令用等位线表现射流速度
clf;
v1=min(min(min(V))); v2=max(max(max(V)));   % 射流速度上下限
cv=linspace(v1,v2,15); % 取15条等位线
contourslice(X,Y,Z,V,sx,sy,sz,cv); view([-12,30]);
colormap jet; colorbar; box on;
end

if 0
shg;n=10;t=n*pi*(0:0.0005:1);x=sin(t);y=cos(t);
plot(x,y,'g');axis square;hold on
comet(x,y,0.01);hold off;
end

% 显示平抛运动
% vx=40;t=0:0.001:10;x=vx*t;
% y=-9.8*t.^2/2;comet(x,y);

% 显示导弹发射
% vx = 100*cos(1/4*pi);vy = 100*sin(1/4*pi);
% t = 0:0.001:15;x = vx*t;y = vy*t-9.8*t.^2/2;
% comet(x,y);

% 匀速圆周运动
% sita=0:0.0001:2*pi;r=10;x=r*cos(sita);y=r*sin(sita);
% comet(x,y);

if 0
clf; % 清除图形
shg; % 显示绘图窗口
x=3*pi*(-1:0.05:1);y=x;[X,Y]=meshgrid(x,y); 
R=sqrt(X.^2+Y.^2)+eps; Z=sin(R)./R; 
h=surf(X,Y,Z);colormap(jet);axis off;
n=12;mmm=moviein(n); %预设画面矩阵。新版完全可以取消此指令 。
for i=1:n 
 rotate(h,[0 0 1],25);   %是图形绕z轴旋转25度/每次
 mmm(:,i)=getframe; %捕获画面。新版改为mmm(i)=getframe 。
end 
movie(mmm,5,10) %以每秒10帧速度，重复播放5次。
end

if 0
shg;clf;[X,Y] = meshgrid([-2:.2:2]);Z = 4*X.*exp(-X.^2-Y.^2); 
G=gradient(Z);subplot(1,2,1),surf(X,Y,Z,G) 
subplot(1,2,2),h=surf(X,Y,Z,G); 
rotate(h,[-2,-2,0],30,[2,2,0]),colormap(jet);
end

% cm=[1,0,0;0,1,0;0,0,1];m=size(cm,1);y=[1:m+1;1:m+1]';
% pcolor(y),colormap(cm);

if 0
figure(1);surf(peaks); % 在1号图形窗中生成图形
f=getframe(1); % 捕获1号窗的图形数据
figure(2);
image(f.cdata);colormap(f.colormap); % 在2号窗中打开，重现图形
end

% clf;ezsurf('x*y','circ'); shading flat;view([-18,28]);