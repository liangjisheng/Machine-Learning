%{
a='this is an example';
[i,j]=size(a);
b='lishuyu';
[ib,jb]=size(b);
ra=a(end:-1:1);

ascii_a=double(a); % ASCII码
char(ascii_a);   % 变回字符串

w=find(a>='a' & a<='z');
ascii_a(w)=ascii_a(w)-32;
char(ascii_a); % 转换成大写

A='这是一个例子。';
A_s=size(A);
A56=A([5,6]);
ASCII_A=double(A);
char(ASCII_A);
b='example ''127.0.0.1''';
ab=[a(1:7),' ',b,' .'];

S1=char('this string array','has two rows');
S2=str2mat('这','字符','串数组','由4行组成');
%“空串”会产生一个空格行 
S3=strvcat('这','字符','串数组',' ','由4行组成');
size(S3);
%}

%{
A=eye(2,4);
A_str1=int2str(A);
size(A_str1);

rand('state',0);
B=rand(2,4);
B3=num2str(B,3);    % 非整数转换成字符串，3为有效数字
%}

%{
a=2;
w=3;
t=0:0.01:10;
y=exp(-a*t).*sin(w*t);
[y_max,i_max]=max(y);   % 找最大值元素位置
t_text=['t=',num2str(t(i_max))];    % 最大值点的横坐标
y_text=['y=',num2str(y_max)];       % 最大值点的纵坐标
max_text=char('maximum',t_text,y_text); % 最大值点的字符串
tit=['y=ext(-',num2str(a),'t)*sin(',num2str(w),'t)'];
plot(t,zeros(size(t)),'k');
hold on
plot(t,y,'b');
plot(t(i_max),y_max,'r.','MarkerSize',20);  % 用大红点标记最大值点的数据
text(t(i_max)+0.3,y_max+0.5,max_text); % 画出文本
title(tit),xlabel('t'),ylabel('y');
hold off
%}

rand('state',0);
a=rand(2,2);
s1=num2str(a);
s_s=sprintf('%.10e\n',a);
fprintf('%.5g\\',a);
s_sscan=sscanf(s_s,'%f',[3,2]); % 浮点格式把串转换成3*2的数值数组