A = [3,5,7,10;1,12,5,9;9,2,4,8];
B = [13,15,17;11,12,15;19,12,14;1,2,3];
A(:,1)=[];
A(:,3)=[];
disp(A);%在清空行列的时候,貌似一次只能清空一行和一列;如果要清空好几列的话,会有先后顺序,而不是真正意义上的同时执行,下面的方法可以同时删除
A(:,[1,3])=[];
B(2,:)=[];
disp(B);
%disp(A,B);
string1 = 'I''m A STUDENT';
newStr = lower(string1);
disp(string1);
disp(newStr);%执行这一句才能看到大写变小写的结果
newStr1 = strrep(newStr,'student','teacher');%函数别用错了
disp(newStr1);