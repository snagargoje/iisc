function [ypred] = linear_predictor_d(test)
load('2d.mat');
[m n] = size(test);
test = [test , ones(m,1)]
ypred = w'*test' ;
save('2d2.mat','ypred');
end