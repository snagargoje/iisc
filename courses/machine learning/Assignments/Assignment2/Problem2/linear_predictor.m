function [ypred] = linear_predictor(test)
load('2a.mat');
[m n] = size(test);

%test2 = test(:,1);
%for i = 2:n
%    test2 = [test2 , test(:,i)];
%end
%test = [test2, ones(m,1)];
size(test)
test = [test  ones(m,1)]
size(test)
size(w)
ypred = (w')*(test') ;
save('2d2.mat','ypred');
end