clear;
if 0
for i=1:10
    x(i)=i;
end

a(1)=1;a(2)=1;i=2;
while a(i)<=10000
    a(i+1)=a(i-1)+a(i);
    i=i+1;
end

cost=10;number=12;
if number>8
    sums=number*0.95*cost;
end

end

if 0
n=100;a=ones(1,n);
for i=3:n
    a(i)=a(i-1)+a(i-2);
    if a(i)>10000
        a(i);
        break;
    end
end
end

% �������� ����(100),����(90-99),����(80-89),����60-79),������(<60)
for i=1:10
    a{i}=89+i;b{i}=79+i;c{i}=69+i;d{i}=59+i;
end
c=[d,c];
Name={' Jack','Marry','Peter',' Rose','  Tom'}; % Ԫ������
Mark={72,83,56,94,100};
Rank=cell(1,5);
% ����һ������5��Ԫ�صļܹ�����S
S=struct('Name',Name,'Marks',Mark,'Rank',Rank);
% ���ݷ���,����ȼ�
for i=1:5
    switch S(i).Marks
        case 100 
            S(i).Rank='����';
        case a 
            S(i).Rank=' ����';
        case b 
            S(i).Rank=' ����';
        case c 
            S(i).Rank=' ����';
        otherwise
            S(i).Rank='������';
    end
end
% ��ӡѧ����Ϣ
disp(['ѧ������   ','   �÷�   ','   �ȼ�']);
disp('');
for i=1:5
    disp([S(i).Name,blanks(9),num2str(S(i).Marks),blanks(7),S(i).Rank]);
end