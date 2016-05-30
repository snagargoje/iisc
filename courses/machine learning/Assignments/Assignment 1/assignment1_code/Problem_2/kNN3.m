function pred = kNN3(X_train,y_train,k,x_test) 
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
nx = sx(2);

if mx ~= n
    x_test = x_test';
end
%size(X_train)
%size(x_test)
distance = dist(X_train,x_test);

%max_distances = max(dista  nce);
%max_distance = max(max_distances) +1;
%sd = size(distance);
%pred_sum = zeros(size(y_train));
%pred = zeros(size(y_train));
[c i] = sort(distance);
%i = i(1:k,:);
%for j = 1:k
%disp('rocky')
%size(i(1:k,:))
s = y_train((i(1:k,:)));
if k==1
    pred = sum(s,2);
else
    pred =  sum(s,1)'; 
end
%end
pred = (pred ./ abs(pred));

%for j = 1:k
%    [d i] = min(distance);
%    size_i = size(i);
%    size_i = size_i(2);
%    pred_sum = pred_sum + y_train(i);
    %disp('y is  :')
    %size(y_train(i))
    %disp('pred is : ')
    %size(pred_sum)
%    for l=1:size_i
%        distance(i(l),l) = max_distance;
%    end
%end
%if pred_sum >= 0 
%    pred = 1;
%else
%    pred = -1;
%end
%pred = pred_sum ./ abs(pred_sum);
%toc

end

