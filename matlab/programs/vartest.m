function vartest(argA,argB,varargin)
%example of var_argin
optargin=size(varargin,2);
stdargin=nargin-optargin;
fprintf('Number of input =%d\n',nargin)%��������ĸ���
fprintf('Inputs from individual arguments(%d):\n',stdargin)
if stdargin>=1
    fprintf('    %d\n',argA)%��ʾ��һ���������
end
if stdargin==2
    fprintf('    %d\n',argB)%��ʾ�ڶ����������
end
fprintf('Inputs packbacked in varargin(%d):\n',optargin)
for k=1:size(varargin,2)
    fprintf('    %d\n',varargin{k})%��ʵ�ɱ���Ŀ���������
end