clear all;clc;
[X,Y,Z]=peaks(30);
figure('color',[1,1,1]);
subplot(121);
waterfall(X,Y,Z);
xlabel('X');
subplot(122);
waterfall(X',Y',Z');
ylabel('Y');