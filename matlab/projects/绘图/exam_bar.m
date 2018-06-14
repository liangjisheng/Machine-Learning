clear;

if 0
% 二位图形表示
x=-2:2; % 自变量单调变化
Y=[3,5,2,4,1;3,4,5,2,1;5,4,3,2,5];% 个因素的相对贡献份额
subplot(1,2,1), bar(x',Y','stacked'); % 累计式 直方图
xlabel('x'),ylabel('\Sigma y'),colormap(cool); % 控制直方图的颜色
legend('因素A','因素B','因素C');
subplot(1,2,2),barh(x',Y','grouped'); % 分组式，水平直方图
xlabel('y'),ylabel('x');
end

% 三维图形表示
x=-2:2; % 自变量单调变化
Y=[3,5,2,4,1;3,4,5,2,1;5,4,3,2,5];% 个因素的相对贡献份额
subplot(1,2,1), bar3(x',Y',1); % 队列式 直方图
xlabel('因素ABC'),ylabel('x'),zlabel('y');
colormap(summer); % 控制直方图的颜色
subplot(1,2,2),bar3h(x',Y','grouped'); % 分组式 水平直方图
ylabel('y'),zlabel('x');