clear;

if 0
% ��λͼ�α�ʾ
x=-2:2; % �Ա��������仯
Y=[3,5,2,4,1;3,4,5,2,1;5,4,3,2,5];% �����ص���Թ��׷ݶ�
subplot(1,2,1), bar(x',Y','stacked'); % �ۼ�ʽ ֱ��ͼ
xlabel('x'),ylabel('\Sigma y'),colormap(cool); % ����ֱ��ͼ����ɫ
legend('����A','����B','����C');
subplot(1,2,2),barh(x',Y','grouped'); % ����ʽ��ˮƽֱ��ͼ
xlabel('y'),ylabel('x');
end

% ��άͼ�α�ʾ
x=-2:2; % �Ա��������仯
Y=[3,5,2,4,1;3,4,5,2,1;5,4,3,2,5];% �����ص���Թ��׷ݶ�
subplot(1,2,1), bar3(x',Y',1); % ����ʽ ֱ��ͼ
xlabel('����ABC'),ylabel('x'),zlabel('y');
colormap(summer); % ����ֱ��ͼ����ɫ
subplot(1,2,2),bar3h(x',Y','grouped'); % ����ʽ ˮƽֱ��ͼ
ylabel('y'),zlabel('x');