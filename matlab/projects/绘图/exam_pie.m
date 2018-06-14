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
% ����ε����
n=10; %����εı���
dt=2*pi/n;t=0:dt:2*pi;
t=[t,t(1)]; %fillָ��Ҫ��������������λ�غϣ�ʹͼ�η�ա�
x=sin(t);y=cos(t);
fill(x,y,'c');axis off  %����ɫ����Σ���ȥ�����ᡣ
ht=text(0,0,'\fontname{����}\fontsize{32}ʮ����'); %����ע�ͣ��õ�ͼ��
set(ht,'Color','k','HorizontalAlignment','Center');% ����ͼ����������
end

if 0
X=[0.5 0.5 0.5 0.5;0.5 0.5 0.5 0.5;0 1 1 0]; 
Y=[0.5 0.5 0.5 0.5;0.5 0.5 0.5 0.5;0 0 1 1]; 
Z=[1 1 1 1;0 0 0 0;0 0 0 0];C=[1 0 0 1;0 1 0 1;0 0 1 0]; 
fill3(X,Y,Z,C),view([-10 55]),colormap cool;
xlabel('x'),ylabel('y'),box on;grid on;
end

if 0
% ����ͼcompass ��ëͼfeather
t=-pi/2:pi/12:pi/2;  %��[-90,90]
r=ones(size(t)); %��λ�뾶
[x,y]=pol2cart(t,r); %������ת��Ϊֱ������
subplot(1,2,1),compass(x,y),title('Compass');
subplot(1,2,2),feather(x,y),title('Feather');
end

% ��ά��ͼָ��
[X,Y,Z]=peaks(40); % ��ȡpeaksͼ������
n=4; % �Ǹ��߷ּ���
subplot(1,2,1),pcolor(X,Y,Z);%α��ͼ
colormap jet,shading interp
hold on, C=contour(X,Y,Z,n,'k:'); %�ú����߻���λ�ߣ���������ʶ���ݡ�
clabel(C) %�����ʶ��
zmax=max(max(Z));zmin=min(min(Z));caxis([zmin,zmax]) %����ɫ��ߵķ�Χ
colorbar; %����ֱɫ���
hold off,subplot(1,2,2);
[C,h,CF]=contourf(X,Y,Z,n,'k:'); %�ú����߻���ɫ��λ�ߣ���������ʶ���ݡ�
clabel(C,h); %���߱�ʶ�� 