%{
syms x; %������ű���
display('����Ϊ:');
y=limit(sin(x)/x,x,0)
%}

%{
%����
syms x;
y=limit((exp(x^3)-1)/(1-cos(sqrt(x-sin(x)))),x,0,'right');
z=limit((exp(x^3)-1)/(1-cos(sqrt(x-sin(x)))),x,0,'left');
if y==z
    display('�м���');
end
%}

syms n;
y=limit(sqrt(n+sqrt(n))-sqrt(n),n,inf);
z=limit(sqrt(n+sqrt(n))-sqrt(n),n,-inf)