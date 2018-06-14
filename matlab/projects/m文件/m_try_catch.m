clear;
n=4;A=magic(3);
try A_N=A(n,:),
catch A_end=A(end,:)
end
lasterr % 显示出错的原因