clear;
if 0
[X0,Y0,Z0]=sphere(30);   % ������λ�������ά����
X=2*X0;Y=2*Y0;Z=2*Z0;    % �����뾶Ϊ2���������ά����
surf(X0,Y0,Z0); % ����λ����
shading interp % ���ò岹��������
hold on,mesh(X,Y,Z); % ������ά����
colormap(hot),hold off;
hidden off % ����͸��Ч��
axis equal,axis off % ����ʾ������
end

if 0
t=linspace(0,2*pi,100); r=1-exp(-t/2).*cos(4*t);  %��תĸ��
[X,Y,Z]=cylinder(r,60); %������ת��������
ii=find(X<0&Y<0); %ȷ��x-yƽ����������ϵ������±�
Z(ii)=NaN; %����
surf(X,Y,Z);colormap(spring),shading interp 
light('position',[-3,-1,3],'style','local') %���ù�Դ
material([0.5,0.4,0.3,10,0.3]) %���ñ��淴�� 
end

if 0
P=peaks(30);
P(18:20,9:15)=NaN;  %�ο�
surfc(P);colormap(summer);
light('position',[50,-10,5]),lighting flat;
material([0.9,0.9,0.6,15,0.4]) ;
end

x=[-8:0.2:8];y=x;[X,Y]=meshgrid(x,y);ZZ=X.^2-Y.^2; 
ii=find(abs(X)>6|abs(Y)>6); %ȷ������[-6,6]��Χ�ĸ���±�
ZZ(ii)=zeros(size(ii)); %ǿ��Ϊ0 ����
surf(X,Y,ZZ),shading interp;colormap(copper);
light('position',[0,-15,1]);lighting phong;
material([0.8,0.8,0.5,10,0.5]);