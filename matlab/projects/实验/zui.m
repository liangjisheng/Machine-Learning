clear;
clc;
x=1:8;
y=1:15;
z=80*x;
zhichu=1:120;
a=80*x(1,1)+30*y(1,1);
for i=1:8
    for j=1:15
        zhichu(1,(i-1)*15+j)=(80*x(1,i)+30*y(1,j));
    end
end

for i=1:8
    for j=1:15
        if(7*x(1,i)+3*y(1,j))>=44
            if a>zhichu(1,(i-1)*15+j)
               if (zhichu(1,i*15)>0)
                a=zhichu(1,(i-1)*15+j);
                quan=i;
                ban=j;
                end
            end
        end
    end
end