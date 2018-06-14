clear;
% eval()函数的功能就是将括号内的字符串视为语句并运行
% a=ones(2,1);b=ones(1,3);
% c=eval('a*b','b*a');
% errmessage=lasterr

cem={'cos','sin','tan'};
for k=1:3
    theta=pi*k/12;
    y(1,k)=eval([cem{1},'(',num2str(theta),')']);
end

% feval 和eval 调用区别：feval 的FN只接受函数名
randn('seed',1);A=rand(2,2); 
[ue,de,ve]=eval('svd(A)'); 
disp('Results by eval');disp([ue,de,ve]);disp(blanks(1)) 
[uf,df,vf]=feval('svd',A); 
disp('Results by feval');disp([uf,df,vf]) 