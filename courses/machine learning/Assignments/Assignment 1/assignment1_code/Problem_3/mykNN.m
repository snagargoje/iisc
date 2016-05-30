function pred = mykNN(X_train,y_train,k,x_test) 
%The function performs k-nearest neighbour classification.
% X_train - Input training data matrix (size m*n where m is 		  the number of datapoints and n is the dimension of 		  each datapoint)
% y_train - Input training data labels corresponding to X_train
% k       - Number of neighbours to consider
% x_test  - Test instance


%distance1 = dist(X_train,x_test');
distance2 = zeros(size(X_train,1),1);
for i=1:size(X_train,1)
	distance2(i) = 0;
	for j = 1:size(X_train,2)
		distance2(i) = distance2(i) + (X_train(i,j) - x_test(j)) ^2 ;
	end
	distance2(i) = sqrt(distance2(i));
end
[d indices]  = sort(distance2);
s = sum(y_train(indices(1:k)));
if s>=0
	pred = 1;
else
	pred = -1;
end
%pred = sum(diff);
end
