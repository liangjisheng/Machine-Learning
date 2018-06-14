% 一维插值 一组数据，确定它们所代表函数穿越y=0.95线的时刻
t=linspace(0,5,100); y=1-cos(3*t).*exp(-t);
plot(t,y,'b'),grid on; hold on;
plot(t,0.95*ones(size(t)),'r'); hold off;
t_ginput=ginput(1); % 鼠标点击输入第一个元素
% 利用插值获得较准确的穿越时刻,先确定原始数据中
%第一次穿越0.95的元素位置，然后取该元素前后3个元素
% 作为插值的"基准"数据，进行插值，在用插值所的的数据确定穿越时刻
it=min(find(y>0.95));
T=(it-3):(it+3); % 在第一穿越点两侧，各取3点
t_nearst=interp1(y(T),t(T),0.95,'nearst');
t_linear=interp1(y(T),t(T),0.95);
t_cubic=interp1(y(T),t(T),0.95,'cubic');
t_spline=interp1(y(T),t(T),0.95,'spline');
disp(['  t_nearst t_linear t_cubic t_spline']);
disp([t_nearst t_linear t_cubic t_spline]);
% 利用fzero()求穿越时刻，以便比较
t_zero=fzero('1-cos(3*x).*exp(-x)-0.95',0.5);