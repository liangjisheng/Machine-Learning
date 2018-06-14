%{
syms x; %定义符号变量
display('极限为:');
y=limit(sin(x)/x,x,0)
%}

%{
%求极限
syms x;
y=limit((exp(x^3)-1)/(1-cos(sqrt(x-sin(x)))),x,0,'right');
z=limit((exp(x^3)-1)/(1-cos(sqrt(x-sin(x)))),x,0,'left');
if y==z
    display('有极限');
end
%}

syms n;
y=limit(sqrt(n+sqrt(n))-sqrt(n),n,inf);
z=limit(sqrt(n+sqrt(n))-sqrt(n),n,-inf)