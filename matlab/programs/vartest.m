function vartest(argA,argB,varargin)
%example of var_argin
optargin=size(varargin,2);
stdargin=nargin-optargin;
fprintf('Number of input =%d\n',nargin)%输入参数的个数
fprintf('Inputs from individual arguments(%d):\n',stdargin)
if stdargin>=1
    fprintf('    %d\n',argA)%显示第一个输入参数
end
if stdargin==2
    fprintf('    %d\n',argB)%显示第二个输入参数
end
fprintf('Inputs packbacked in varargin(%d):\n',optargin)
for k=1:size(varargin,2)
    fprintf('    %d\n',varargin{k})%现实可变数目的输入参数
end