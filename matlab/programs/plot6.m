clear all;clc;
t=linspace(0,pi,100);
for n=-5:5
    r=cos(5*t)+n*cos(t);
    polar(t,r);
    hold on;
end
hold off;