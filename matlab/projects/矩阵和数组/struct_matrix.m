%{
% Ԫ������Ĵ�������ʾ
C_str=char('����','Ԫ�����鴴������1');
R=reshape(1:9,3,3);
Cn=[1+2i];
S_sym=sym('sin(-3*t)*exp(-t)');     %���ź�����

A(1,1)={C_str};A(1,2)={R};A(2,1)={Cn};A(2,2)={S_sym};
B{1,1}=C_str;B{1,2}=R;B{2,1}=Cn;B{2,2}=S_sym;
celldisp(B);

C=cell(2);
C(:,1)={char('Another','text string');10:-1:1};
AC=[A,C];
A_C=[A;C];
% cellplotͼ�λ�����ı�ʾԪ�����������
% cellplot(A_C,'legend');
R_A_C=reshape(A_C,2,4);
f1=R_A_C(2,3);  % ʹ��Բ����Ѱ�õõ�����Ԫ����������������
class(f1);
R_A_C;
f2=R_A_C{1,1}(:,[1,2,5,6]);% ȡ��һ�е�һ��Ԫ�������еĵ�1,2,5,6��
[f3,f4,f5]=deal(R_A_C{[1,3,4]}); % ȡ����Ԫ�����ݣ���ֵ����������
%}

%{
clear;
green_house.name='һ�ŷ�';
green_house.volume='2000������';
green_house.parameter.temperature=[31.2,30.4,31.6,28.7,29.7,31.1,29.6];
green_house.parameter.humidity=[62.1,59.5,57.7,61.5,62.0,61.9,59.2,57.5];
green_house;
green_house.parameter;
green_house.parameter.temperature;

a=cell(2,3);
green_house_1=struct('name',a,'volume',a,'parameter',a(1,2));
green_house_2=struct('name',[],'volume',[],'parameter',[]);
green_house_3(2,3)=struct('name',[],'volume',[],'parameter',[]);
%}

%{
for k=1:10
    department(k).number=['No.',int2str(k)];
end
%�����
department(1).teacher=40;
department(1).student=300;
department(1).PC_computer=40;

department(2).teacher.male=35;
department(2).teacher.female=13;
D2T=department(2).teacher;
D1T=department(1).teacher;
%ɾ�����Ƕ���������ʵʩ
department=rmfield(department,'student');
department=rmfield(department,{'teacher';'PC_computer'});
%}

n_ex=5;
for k=1:n_ex
    ex(k).f=(k-1)*n_ex+[1:5];
end
ex;
disp([blanks(10),'�ܹ����е�����']);
for k=1:n_ex
    disp(ex(k).f);
end
class(ex(1).f);
% ����Ԫ��������
sum_f=zeros(1,5);
for k=1:n_ex
    sum_f=sum_f+ex(k).f;
end
sum_f;
% �Լܹ��������и�Ԫ�طֱ���ƽ����
disp([blanks(20),'ex_f��ƽ����ֵ']);
for k=1:n_ex
    disp(sqrt(ex(k).f));
end

for k=1:5
    ex(k).s=['No.',int2str(k)];
    ex(k).f=(k-1)*5+[1:5];
end

fprintf('%s\n','ex.s�������');
fprintf('%s\',blanks(4));
for k=1:5
    fprintf('%s\\',[ex(k).s blanks(1)]);
end 
fprintf('%s\n',blanks(1));
fprintf('%s\n','ex.f�������');
for k=1:5
    disp(ex(k).f);
end   %��ʾex.f������ 