function [a,b]=mainfunction(x,y)
%this is an example of main function
a=subfun1(x,y);
b=subfun2(x,y);
end
function [a]=subfun1(x,y)%子函数定义
%this is an example of subfun1
a=min(x,y);
end
function [b]=subfun2(x,y)
%this is an example of subfun2
b=max(x,y);
end