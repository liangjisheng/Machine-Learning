clear all;clc;
c1=clock %当前日期的向量，年 月 日 时 分 秒
d1=date %当前日期的字符串
n1=now %双精度表示当前日期
calendar %产生当月日历
c2=calendar('10-March-2012') %产生日历
c3=calendar(2012,3) %产生指定月份的日历

d1=datenum('07-Apr-2012')%日期转换为数字
d2=datenum(now)
d3=datenum(2012,4,10,13,30,20)%日期转换为数字