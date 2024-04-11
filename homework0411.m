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
% fenzi0 = 4
% for i = 4:2:n*2
%     fenzi = fenzi0 * i * i
%     fenzi0 = fenzi
%     %disp('此时=')
%     %disp(fenzi)
% end
% disp('分子=')
% disp(fenzi)
% 
% fenmu0 = 3
% for j1 = 3:2:(n*2-1)
%     j2 = j1 + 2
%     fenmu = fenmu0 * j1 * j2
%     fenmu0 = fenmu
%     %disp('此时=')
%     %disp(fenmu)
% end
% disp('分母=')
% disp(fenmu)
% 
% format rat
% ans = fenzi / fenmu
% disp('答案=')
% disp(ans)

%第二题-向量运算
% userInput = input('请输入n的值: ', 's'); 
% n = str2double(userInput);
% disp(['输入的n为: ' num2str(n)]);
% 
% Afenzi = [2:2:(n * 2)]
% %disp('Afenzi=')
% %disp(Afenzi)
% fenzi0 = prod(Afenzi)
% fenzi = fenzi0 * fenzi0
% disp('fenzi=')
% disp(fenzi)
% 
% Bfenmu1 = [1:2:(n * 2 - 1)]
% Bfenmu2 = [1:2:(n * 2 + 1)]
% %disp('Bfenmu=')
% %disp(Bfenmu)
% fenmu1 = prod(Bfenmu1)
% fenmu2 = prod(Bfenmu2)
% fenmu = fenmu1 * fenmu2
% disp('fenmu=')
% disp(fenmu)
% 
% format rat
% ans = fenzi / fenmu
% disp('答案=')
% disp(ans)

%第三题
%A = [2, 43, 24; 8, 4, 21; 45, 6, 8];
rows = input('请输入矩阵的行数：');
cols = input('请输入矩阵的列数：');
A = zeros(rows, cols); % 创建一个初始元素为零的矩阵
for i = 1:rows
    for j = 1:cols
        A(i, j) = input(['请输入矩阵元素(' num2str(i) ',' num2str(j) '): ']);
    end
end
B = fx(A);
disp(B)