clear;
F1=inline('sin(rho)/rho')  %第一种格式创建内联函数 
f1=F1(2)
FF1=vectorize(F1) %产生适于“数组运算”的内联函数
xx=[0.5,1,1.5,2];ff1=FF1(xx)
G2=inline('a*exp(x(1))*cos(x(2))','a','x'),G2(2,[-1,pi/3])

Y2=inline('[x(1)^2;3*x(1)*sin(x(2))]') 
argnames(Y2) %观察内联函数的输入宗量
x=[4,pi/6]; %向量输入的赋值
y2=Y2(x) %获得向量输出 