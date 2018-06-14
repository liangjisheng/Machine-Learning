clear all;clc;
x=0.1:0.1:2*pi;
%y1=200*exp(-0.05*x).*sin(x);
%y2=0.8*exp(-0.5*x).*sin(10*x);
y1=sin(x);
y2=10.^x;
plotyy(x,y1,x,y2,'plot','semilogy')%»æÖÆË«ÖáÇúÏß