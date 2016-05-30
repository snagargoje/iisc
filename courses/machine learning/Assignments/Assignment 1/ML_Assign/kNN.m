function pred = kNN(X_train,y_train,k,x_test) 
%The function performs k-nearest neighbour classification.
% X_train - Input training data matrix (size m*n where m is 		  the number of datapoints and n is the dimension of 		  each datapoint)
% y_train - Input training data labels corresponding to X_train
% k       - Number of neighbours to consider
% x_test  - Test instance


% REMOVE THE FOLLOWING LINE AND IMPLEMENT YOUR CODE HERE

% getting size of training set
[m n] = size( X_train);

mp = zeros( m, 1);
kmap = zeros( m, 1);
indices = zeros( m, 1);

% calculating distance of test instance from each of training instance
for i = 1 : m
    dist = 0;
    for j = 1 : n
        dist = dist + (x_test(j) - X_train(i,j)) ^ 2;
    end
    mp( i) = sqrt(dist);
%    mp( i, 2) = i;
end

[ kmap, indices] = sort( mp);

%for i = 1 : 20
    %mp( i, :)
%    kmap( i);
%    indices( i);
%end

decision = 0;

for i = 1 : k
    if( y_train( indices( i)) == 1)
        decision = decision + 1;
    else
        decision = decision - 1;
    end
end

if( decision >= 0)
    pred = 1;
else
    pred = -1;
end

end

