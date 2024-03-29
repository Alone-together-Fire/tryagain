A = [0.43, 43, 2; -8.9, 4, 21; 45, 6, 8];
%求该矩阵的秩
b = rank(A);
%求该矩阵的迹
c = trace(A);
%求该矩阵的范数 矩阵A的2—范数：A'A矩阵的最大特征值的平方根
d = norm(A);%计算它的2—范数
e = norm(A,1);%计算它的1—范数
%输出
disp("该矩阵的秩b=" + b);
disp("该矩阵的迹c=" + c);
disp("它的2—范数d=" + d);
disp("它的1—范数e=" + e);

%产生5阶希尔伯特矩阵H
B = hilb(5);
%5阶帕斯卡矩阵P
C = pascal(5);
%求行列式的值
f = det(B);
g = det(C);
%求条件数
h = cond(B);
i = cond(C);
%输出
disp("5阶希尔伯特矩阵H行列式的值f=" + f);
disp("5阶帕斯卡矩阵P行列式的值g=" + g);
disp("5阶希尔伯特矩阵H行列式的条件数h=" + h);
disp("5阶帕斯卡矩阵P行列式的条件数g=" + g);

D = [-29, 6, 18; 20, 5, 12; -8, 8, 5];
%特征值
%特征向量
k = eig(D);%求矩阵D的全部特征值，构成向量k
[X,E] = eig(D);%求矩阵D的全部特征值，构成对角阵E，并产生矩阵X，X各列是相应的特征向量
disp("矩阵D的全部特征值构成的向量k=");
disp(k);
disp("各列是相应的特征向量的矩阵X=");
disp(X);
disp("矩阵D的全部特征值构成的对角阵E=");
disp(E);