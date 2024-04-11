function [outputArg1] = fx(ix)%输入与返回都只有一个参数
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
fenmu1 = 0.1 + (ix - 2) * (ix - 2);%计算第一个项的分母
fenmu2 = 0.01 + (ix - 3) * (ix - 3) * (ix - 3) * (ix - 3);%计算第二个项的分母
format rat%答案以分数形式显示
outputArg1 = (1 ./ fenmu1) + (1 ./ fenmu2);%计算函数的最终答案,作为返回值
end

