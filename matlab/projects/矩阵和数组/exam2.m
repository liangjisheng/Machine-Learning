%{
A=reshape(1:24,2,3,4);
dim_A=ndims(A);     % A��ά��
size_A=size(A);     % A�Ĵ�С
L_A=length(A);      % A�ĳ���
a=0;
class(a);       % �ж�a����������
isnan(a);       % �жϷ���

rand('state',0);    % ���������Ϊ0
R=rand(2,5);
R(1,5)=NaN;
R(2,3)=NaN;
isnan(R);
Linear_index=find(isnan(R));    % �����ĵ��±��ʶ
[r_index,c_index]=ind2sub(size(R),Linear_index);    % ת����ȫ�±�
disp('r_index c_index');
disp([r_index,c_index]);
%}

%{
a=[];
class(a);
isnumeric(a);
isempty(a);
which a;
ndims(a);
size(a);
a==0;
a~=0
%}

t=-2*pi:pi/10:2*pi;
y=sin(t)./t; %t=0ʱ��������Nan
tt=t+(t==0)*eps;    % ʹ����0���к����ֵ
yy=sin(tt)./tt;
subplot(1,2,1),plot(t,y),axis([-7,7,-0.5,1.2]);
xlabel('t'),ylabel('y'),title('��ȱͼ��');
subplot(1,2,2),plot(tt,yy),axis([-7,7,-0.5,1.2]);
xlabel('tt'),ylabel('yy'),title('��ȷͼ��');