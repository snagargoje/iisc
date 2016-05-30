function pred = kNN(X_train,y_train,k,x_test) 
%The function performs k-nearest neighbour classification.
% X_train - Input training data matrix (size m*n where m is 		  the number of datapoints and n is the dimension of 		  each datapoint)
% y_train - Input training data labels corresponding to X_train
% k       - Number of neighbours to consider
% x_test  - Test instance
%tic

s = size(X_train);
m = s(1);
n = s(2);
sx = size(x_test);
mx = sx(1);
%nx = sx(2);
if mx ~= n
    x_test = x_test';
end
%size(X_train)
%size(x_test)
distance = dist(X_train,x_test);
max_distances = max(distance);
max_distance = max(max_distances) +1;
sd = size(distance);
%pred_sum = 0;
pred = zeros(sd(2),1);
for j = 1:sd(2)
    pred_sum = 0;
    for l = 1:k
        [d i] = min(distance(:,j));
        pred_sum = pred_sum + y_train(i);
        distance(i,j) = max_distance ;
    end
    pred(j,1) = pred_sum / abs(pred_sum); 
end
%toc
end

