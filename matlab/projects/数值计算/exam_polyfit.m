% ����ʽ���
x=0:0.1:1;y=[2.1,2.3,2.5,2.9,3.2,3.3,3.8,4.1,4.9,5.4,5.8];
dy=0.15; % Ԫ����y�ı�׼��
for n=1:6
    [a,S]=polyfit(x,y,n); % ������϶���ʽϵ��
    A{n}=a; % ��Ԫ�������¼��ͬ�״ζ���ʽ��ϵ��
    da=dy*sqrt(diag(inv(S.R'*S.R)));  % �����ϵ�������
    DA{n}=da'; % ��¼��ͬ�״ζ���ʽϵ�������
    freedom(n)=S.df; % ��¼���ɶ�
    [ye,delta]=polyval(a,x,S); % ������϶���ʽֵ�ķ�Χ
    YE{n}=ye;   % ��ֵ
    D{n}=delta; % ���
    chi2(n)=sum((y-ye).^2)/dy/dy; %���㲻ͬ�״εĿ�����
end
Q=1-chi2cdf(chi2,freedom); % �����ж�������ö�
subplot(1,2,1),plot(1:6,abs(chi2-freedom),'b');
xlabel('�״�'),title('chi2�����ɶ�');
subplot(1,2,2),plot(1:6,Q,'r',1:6,ones(1,6)*0.5);
xlabel('�״�'),title('Q��0.5��');
% figure; plot(x,y);
% ���׶���ʽ������ͼ
figure;
plot(x,y,'b+');axis([0,1,1,6]); hold on;
errorbar(x,YE{3},D{3},'r'); hold off;
title('���ʵ����������');
text(0.1,5.5,['chi2=' num2str(chi2(3)),'~',int2str(freedom(3))]);
text(0.1,5,['freedom=' int2str(freedom(3))]);
text(0.6,1.7,['Q=' num2str(Q(3)) '~0.5']);