clear;
if 0
%����ָ���������ϵ�ɫ�ʱ��������ٶ�
[X,Y,Z,V]=flow; %ȡ4��(50*25*25���������ݾ���V�������ٶȡ�
x1=min(min(min(X)));x2=max(max(max(X))); %ȡx����������
y1=min(min(min(Y)));y2=max(max(max(Y))); %ȡy����������
z1=min(min(min(Z)));z2=max(max(max(Z))); %ȡz����������
sx=linspace(x1+1.2,x2,5); %ȷ��5����ֱx�����������
sy=0; %��y=0����ȡ��ֱy�������
sz=0; %��z=0����ȡ��ֱz�������
slice(X,Y,Z,V,sx,sy,sz); %����Ƭͼ
view([-12,30]);shading interp;colormap jet;axis off;colorbar;

% ����ָ���õ�λ�߱��������ٶ�
clf;
v1=min(min(min(V))); v2=max(max(max(V)));   % �����ٶ�������
cv=linspace(v1,v2,15); % ȡ15����λ��
contourslice(X,Y,Z,V,sx,sy,sz,cv); view([-12,30]);
colormap jet; colorbar; box on;
end

if 0
shg;n=10;t=n*pi*(0:0.0005:1);x=sin(t);y=cos(t);
plot(x,y,'g');axis square;hold on
comet(x,y,0.01);hold off;
end

% ��ʾƽ���˶�
% vx=40;t=0:0.001:10;x=vx*t;
% y=-9.8*t.^2/2;comet(x,y);

% ��ʾ��������
% vx = 100*cos(1/4*pi);vy = 100*sin(1/4*pi);
% t = 0:0.001:15;x = vx*t;y = vy*t-9.8*t.^2/2;
% comet(x,y);

% ����Բ���˶�
% sita=0:0.0001:2*pi;r=10;x=r*cos(sita);y=r*sin(sita);
% comet(x,y);

if 0
clf; % ���ͼ��
shg; % ��ʾ��ͼ����
x=3*pi*(-1:0.05:1);y=x;[X,Y]=meshgrid(x,y); 
R=sqrt(X.^2+Y.^2)+eps; Z=sin(R)./R; 
h=surf(X,Y,Z);colormap(jet);axis off;
n=12;mmm=moviein(n); %Ԥ�軭������°���ȫ����ȡ����ָ�� ��
for i=1:n 
 rotate(h,[0 0 1],25);   %��ͼ����z����ת25��/ÿ��
 mmm(:,i)=getframe; %�����档�°��Ϊmmm(i)=getframe ��
end 
movie(mmm,5,10) %��ÿ��10֡�ٶȣ��ظ�����5�Ρ�
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
figure(1);surf(peaks); % ��1��ͼ�δ�������ͼ��
f=getframe(1); % ����1�Ŵ���ͼ������
figure(2);
image(f.cdata);colormap(f.colormap); % ��2�Ŵ��д򿪣�����ͼ��
end

% clf;ezsurf('x*y','circ'); shading flat;view([-18,28]);