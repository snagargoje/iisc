function [w] = linear_least_squares_learner(train,label_train)
[m n] = size(train);
%w = ones(m,1);
%for i=1:m
%    w(i) = (inv((train(i)'.(train(i))).train(i)').label_train(i)
%end
%w = ones(size(train),1);

%train = [train(:,1),train(:,2),ones(size(train(:,1),1),1)]
train2 = train(:,1);
for i=2:n
    train2 = [train2 , train(:,i)];
end
train = [train2 , ones(m,1)];
w = (train'*train);
w = inv(w);
w = w*train';
w = w*label_train;
save('2a.mat','w');
end