clear;
% eval()�����Ĺ��ܾ��ǽ������ڵ��ַ�����Ϊ��䲢����
% a=ones(2,1);b=ones(1,3);
% c=eval('a*b','b*a');
% errmessage=lasterr

cem={'cos','sin','tan'};
for k=1:3
    theta=pi*k/12;
    y(1,k)=eval([cem{1},'(',num2str(theta),')']);
end

% feval ��eval ��������feval ��FNֻ���ܺ�����
randn('seed',1);A=rand(2,2); 
[ue,de,ve]=eval('svd(A)'); 
disp('Results by eval');disp([ue,de,ve]);disp(blanks(1)) 
[uf,df,vf]=feval('svd',A); 
disp('Results by feval');disp([uf,df,vf]) 