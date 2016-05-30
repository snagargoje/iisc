function [w] = kernel_ridge_learner(train,label_train,lambda,kernel,d)
[m n] = size(train);
%w = ones(m,1);
%for i=1:m
%    w(i) = (inv((train(i)'.(train(i))).train(i)').label_train(i)
%end
%w = ones(size(train),1);

%train = [train , ones(m,1)];
K = computeKernel(train,train,kernel,d);
%w = (train'*train);
%w = 2*K/m;
w = K;
w = w + lambda*eye(size(w,1),size(w,2));
w = inv(w);
%w = w*train';
w = w*label_train;
%w = 2*w/m;
save('2e.mat','w');
end