function [w] = linear_ridge_learner(train,label_train,lambda)
[m n] = size(train);
%w = ones(m,1);
%for i=1:m
%    w(i) = (inv((train(i)'.(train(i))).train(i)').label_train(i)
%end
%w = ones(size(train),1);
train = [train , ones(m,1)];
w = (train'*train);
%w = 2*w/m;
w = w + lambda*eye(size(w,1),size(w,2));
w = inv(w);
w = w*train';
w = w*label_train;
%w = 2*w/m;
save('2d.mat','w');
end