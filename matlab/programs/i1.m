clear all;clc;
%stu(1).name='Wang Gang';
%stu(1).gender='Male';
%stu(1).age=24;
%stu(2).name='liangjisheng';
%stu(2).gender='Male';
%stu(2).age=22;

%s1=struct('student',{'zhang san','wang gang'},'sorce',{80,89},...
%'class',{1},'gender',{'male','female'});
%�����ṹ�����

%s=struct('name','zhang san','Math',88,'English',90);
%f1=isstruct(s);
%f2=isfield(s,'name');%�ж��Ƿ�Ϊ�ṹ�����
%f3=isfield(s,'math');
%f4=isfield(s,{'Math','name','zhang san'});

%s=struct('name','zhangsan','math',88,'English',90)
%s1=rmfield(s,'math') %ɾ����Ա����
%s2=rmfield(s,'English')
%s1.math=99 %��ӳ�Ա����

%s=struct('name',{'zhang san','li si'},'math',{88,90},'English',{90,89})
%s(1,2)
%a1=getfield(s,'math') %��ȡ��Ա������ֵ
%a2=s(1,2).math
%b1=getfield(s,{1,2},'math')
%setfield  ���ó�Ա������ֵ
%struct2cell  ���ṹ�����ת��Ϊ��Ԫ����