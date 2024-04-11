% ctrl+R ctrl+T
% %输入成绩-switch
% userInput = input('请输入一个百分制成绩: ', 's'); 
% number = str2double(userInput); %获取键盘输入的数据
% if isnan(number)%如果输入的不是数字
%     disp('请输入正确的数'); 
% else 
%     if number >= 0 && number <= 100%如果输入了正确的百分制成绩
%         disp(['该学生的成绩为: ' num2str(number)]);%显示成绩
%         switch number
%             case {90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100}
%                 disp('等级为A')
%             case {80, 81, 82, 83, 84, 85, 86, 87, 88, 89}
%                 disp('等级为B')
%             case {70, 71, 72, 73, 74, 75, 76, 77, 78, 79}
%                 disp('等级为C')
%             case {60, 61, 62, 63, 64, 65, 66, 67, 68, 69}
%                 disp('等级为D')
%             otherwise
%                 disp('等级为E')
%         end
%     else%如果输入的数不在0-100的范围内
%         disp('请输入正确的百分制成绩'); 
%     end
% end
% 
% %输入成绩-if
% userInput = input('请输入一个百分制成绩: ', 's'); 
% number = str2double(userInput); %获取键盘输入的数据
% if isnan(number)%如果输入的不是数字
%     disp('请输入正确的数'); 
% else 
%     if number >= 0 && number <= 100%如果输入了正确的百分制成绩
%         disp(['该学生的成绩为: ' num2str(number)]);%显示成绩
%         if number >= 90 && number <= 100
%             disp('等级为A')
%         elseif number >= 80 && number <= 89
%             disp('等级为B')
%         elseif number >= 70 && number <= 79
%             disp('等级为C')
%         elseif number >= 60 && number <= 69
%             disp('等级为D')
%         else
%             disp('等级为E')
%         end
%     else%如果输入的数不在0-100的范围内
%         disp('请输入正确的百分制成绩'); 
%     end
% end

%第二题-循环结构
% userInput = input('请输入n的值: ', 's'); 
% n = str2double(userInput);
% disp(['输入的n为: ' num2str(n)]);
% 
% %计算方法:先算出总的分子与分母,再将它俩相除得到最后的分数
% fenzi0 = 4;%起始时2*2=4
% for i = 4:2:n*2%i从4开始,每次+2,最大为2n
%     fenzi = fenzi0 * i * i;
%     fenzi0 = fenzi;
%     %disp('此时=')
%     %disp(fenzi)
% end
% disp('最终分子=')
% disp(fenzi)
% 
% fenmu0 = 3;%起始时1*3=3
% for j1 = 3:2:(n*2-1)%j1从3开始,每次+2,最大为2n-1
%     j2 = j1 + 2;
%     fenmu = fenmu0 * j1 * j2;
%     fenmu0 = fenmu;
%     %disp('此时=')
%     %disp(fenmu)
% end
% disp('最终分母=')
% disp(fenmu)
% 
% format rat%最终答案以分数形式显示
% answ = fenzi / fenmu;
% disp('最终答案=')
% disp(answ)

%第二题-向量运算
% userInput = input('请输入n的值: ', 's'); 
% n = str2double(userInput);
% disp(['输入的n为: ' num2str(n)]);
% 
% %计算方法:先算出总的分子与分母,再将它俩相除得到最后的分数;总的分子先拆成两个矩阵,各自用prod算出乘积,再把各自的乘积相乘,即为总的
% Afenzi = 2:2:(n * 2);%构建分子的矩阵;只有一列,从2开始,每次+2,最大为2n
% %disp('Afenzi=')
% %disp(Afenzi)
% fenzi0 = prod(Afenzi);%得到一半的乘积
% fenzi = fenzi0 * fenzi0;%得到总的分子
% disp('最终分子=')
% disp(fenzi)
% 
% Bfenmu1 = 1:2:(n * 2 - 1);%构建分母的一半矩阵;只有一列,从1开始,每次+2,最大为2n-1
% Bfenmu2 = 1:2:(n * 2 + 1);%构建分母的一半矩阵;只有一列,从1开始,每次+2,最大为2n+1
% %disp('Bfenmu=')
% %disp(Bfenmu)
% fenmu1 = prod(Bfenmu1);%得到一半的乘积
% fenmu2 = prod(Bfenmu2);%得到一半的乘积
% fenmu = fenmu1 * fenmu2;%得到总的分母
% disp('最终分母=')
% disp(fenmu)
% 
% format rat%最终答案以分数形式显示
% answ = fenzi / fenmu;
% disp('最终答案=')
% disp(answ)

%第三题
% rows = input('请输入矩阵的行数：');
% cols = input('请输入矩阵的列数：');
% A = zeros(rows, cols); % 创建一个初始元素为零的矩阵
% for i = 1:rows
%     for j = 1:cols
%         A(i, j) = input(['请输入矩阵元素(' num2str(i) ',' num2str(j) '): ']);
%     end
% end
% B = fx(A);%调用fx函数
% disp(B)%显示答案