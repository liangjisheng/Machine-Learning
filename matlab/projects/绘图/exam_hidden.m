clear;
if 0
[X0,Y0,Z0]=sphere(30);   % 产生单位球面的三维坐标
X=2*X0;Y=2*Y0;Z=2*Z0;    % 产生半径为2的球面的三维坐标
surf(X0,Y0,Z0); % 画单位球面
shading interp % 采用插补明暗处理
hold on,mesh(X,Y,Z); % 绘制三维曲面
colormap(hot),hold off;
hidden off % 产生透视效果
axis equal,axis off % 不显示坐标轴
end

if 0
t=linspace(0,2*pi,100); r=1-exp(-t/2).*cos(4*t);  %旋转母线
[X,Y,Z]=cylinder(r,60); %产生旋转柱面数据
ii=find(X<0&Y<0); %确定x-y平面第四象限上的数据下标
Z(ii)=NaN; %剪切
surf(X,Y,Z);colormap(spring),shading interp 
light('position',[-3,-1,3],'style','local') %设置光源
material([0.5,0.4,0.3,10,0.3]) %设置表面反射 
end

if 0
P=peaks(30);
P(18:20,9:15)=NaN;  %镂空
surfc(P);colormap(summer);
light('position',[50,-10,5]),lighting flat;
material([0.9,0.9,0.6,15,0.4]) ;
end

x=[-8:0.2:8];y=x;[X,Y]=meshgrid(x,y);ZZ=X.^2-Y.^2; 
ii=find(abs(X)>6|abs(Y)>6); %确定超出[-6,6]范围的格点下标
ZZ(ii)=zeros(size(ii)); %强制为0 裁切
surf(X,Y,ZZ),shading interp;colormap(copper);
light('position',[0,-15,1]);lighting phong;
material([0.8,0.8,0.5,10,0.5]);