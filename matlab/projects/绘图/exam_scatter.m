clear;

if 0
x=3*pi*(-1:0.2:1);y=x;[X,Y]=meshgrid(x,y); 
R=sqrt(X.^2+Y.^2)+eps;Z=sin(R)./R;%引入eps避免0/0
C=abs(del2(Z)); %求“五点格式”差分，反映曲面变化。
meshz(X,Y,Z,C); %由曲面变化决定用色
hold on,scatter3(X(:),Y(:),Z(:),'filled');
hold off,colormap(hot);
end

if 0
% 不规则数据的网线图和曲面图
rand('seed',22),X=6*pi*(rand(20,10)-0.5);Y=6*pi*(rand(20,10)-0.5); 
R=sqrt(X.^2+Y.^2)+eps;Z=sin(R)./R; 
tri=delaunay(X,Y); %进行三角剖分
subplot(1,2,1),trimesh(tri,X,Y,Z);
subplot(1,2,2),trisurf(tri,X,Y,Z);
colormap(jet);brighten(0.5); % 增强亮度
end

% 四维表现
x=3*pi*(-1:1/15:1);y=x;[X,Y]=meshgrid(x,y); 
R=sqrt(X.^2+Y.^2)+eps;Z=sin(R)./R; 
[dzdx,dzdy]=gradient(Z);dzdr=sqrt(dzdx.^2+dzdy.^2); %计算对r的全导数
dz2=del2(Z); %计算曲率<4> 
subplot(1,2,1),surf(X,Y,Z),title('No. 1 surf(X,Y,Z)') 
shading faceted,colorbar('horiz'),brighten(0.2) 
subplot(1,2,2),surf(X,Y,Z,R),title('No. 2 surf(X,Y,Z,R)');

figure();
subplot(1,2,1),surf(X,Y,Z,dzdx) 
shading faceted;brighten(0.1);colorbar('horiz') 
title('No. 3 surf(X,Y,Z,dzdx)') 
subplot(1,2,2),surf(X,Y,Z,dzdy) 
shading faceted;colorbar('horiz') 
title('No. 4 surf(X,Y,Z,dzdy)');

figure();
subplot(1,2,1),surf(X,Y,Z,abs(dzdr)) 
shading faceted;brighten(0.6);colorbar('horiz') 
title('No. 5 surf(X,Y,Z,abs(dzdr))') 
subplot(1,2,2),surf(X,Y,Z,abs(dz2)) %<17> 
shading faceted;colorbar('horiz') 
title('No. 6 surf(X,Y,Z,abs(dz2))')
shading faceted;colorbar('horiz');