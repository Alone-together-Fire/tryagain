function [outputArg1] = fx(ix)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
fenmu1 = 0.1 + (ix - 2) * (ix - 2);
fenmu2 = 0.01 + (ix - 3) * (ix - 3) * (ix - 3) * (ix - 3);
format rat
outputArg1 = (1 ./ fenmu1) + (1 ./ fenmu2);

end

