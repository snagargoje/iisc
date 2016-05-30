function pred = kNN4(X_train,y_train,k,x_test) 
%The function performs k-nearest neighbour classification.
% X_train - Input training data matrix (size m*n where m is 		  the number of datapoints and n is the dimension of 		  each datapoint)
% y_train - Input training data labels corresponding to X_train
% k       - Number of neighbours to consider
% x_test  - Test instance

s1 = size(X_train,1);
s2 = size(X_train,2);
d = zeros(s1,1);
for i=1:s1
    d(i) = 0;
    for j = 1:s2
        d(i) = d(i) + (X_train(i,j)-x_test(j))^2 ;
    end
    d(i) = sqrt(d(i));
end
[c i] = sort(d);
pred = 0;
for j = 1:k
    pred = pred + y_train(i(j));
end
if pred >= 0
    pred = 1;
else
    pred = -1;
end
%pred = pred ./ abs(pred);
end
