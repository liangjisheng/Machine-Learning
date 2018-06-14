clear;
a=30;t=(0:a)/a*2*pi; sss={'base','caller','self'};
for k=1:3
    y0=evalinzzy(8,sss{k});
    subplot(1,3,k);
    plot(real(y0),imag(y0),'r','LineWidth',3),axis square image
end