% һά��ֵ һ�����ݣ�ȷ����������������Խy=0.95�ߵ�ʱ��
t=linspace(0,5,100); y=1-cos(3*t).*exp(-t);
plot(t,y,'b'),grid on; hold on;
plot(t,0.95*ones(size(t)),'r'); hold off;
t_ginput=ginput(1); % ����������һ��Ԫ��
% ���ò�ֵ��ý�׼ȷ�Ĵ�Խʱ��,��ȷ��ԭʼ������
%��һ�δ�Խ0.95��Ԫ��λ�ã�Ȼ��ȡ��Ԫ��ǰ��3��Ԫ��
% ��Ϊ��ֵ��"��׼"���ݣ����в�ֵ�����ò�ֵ���ĵ�����ȷ����Խʱ��
it=min(find(y>0.95));
T=(it-3):(it+3); % �ڵ�һ��Խ�����࣬��ȡ3��
t_nearst=interp1(y(T),t(T),0.95,'nearst');
t_linear=interp1(y(T),t(T),0.95);
t_cubic=interp1(y(T),t(T),0.95,'cubic');
t_spline=interp1(y(T),t(T),0.95,'spline');
disp(['  t_nearst t_linear t_cubic t_spline']);
disp([t_nearst t_linear t_cubic t_spline]);
% ����fzero()��Խʱ�̣��Ա�Ƚ�
t_zero=fzero('1-cos(3*x).*exp(-x)-0.95',0.5);