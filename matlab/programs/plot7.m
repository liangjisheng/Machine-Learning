clear all;clc;
t=[0:pi/100:pi]';
for n=-5:5
    r=cos(5*t)+n*cos(t);
    [x1,y1]=pol2cart(t,r);
    plot(x1,y1);
    hold on;
end
hold off;
axis tight;