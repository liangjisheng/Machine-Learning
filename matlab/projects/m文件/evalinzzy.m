% eval()函数的功能就是将括号内的字符串视为语句并运行
function y1=evalinzzy(a,s)
t=(0:a)/a*2*pi;
y1=subevalinzzy(4,s);
% subfunction
function y2=subevalinzzy(a,s)
t=(0:a)/a*2*pi;ss='a*exp(i*t)';
switch s
    case {'base','caller'}
        y2=evalin(s,ss);
    case 'self'
        y2=eval(ss);
end