clear all;clc;
x=91:95;
profits1=[88,75,84,93,77];
profits2=[51,64,54,56,68];
profits3=[42,54,34,25,24];
profits4=[26,38,18,15,4];
area(x,profits1,'linewidth',3,'facecolor',[0.5,0.9,0.6],'edgecolor','b')
hold on
area(x,profits2,'linewidth',3,'facecolor',[0.9,0.85,0.7],'edgecolor','y')
hold on
area(x,profits3,'linewidth',3,'facecolor',[0.3,0.6,0.7],'edgecolor','r')
hold on
area(x,profits4,'linewidth',3,'facecolor',[0.6,0.5,0.9],'edgecolor','m')
hold off
xlabel('年','fontsize',13);
ylabel('销售量','fontsize',13,'fontname','隶书');
gtext('第一季度销售量')
gtext('第二季度销售量')
gtext('第三季度销售量')
gtext('第四季度销售量')