function [pred] = run_kNN( X_train, y_train, k, X_test, percent)

train_m = size( X_train, 1);
train_m = (percent * train_m) / 100;

new_X_train = X_train( 1 : train_m , :);
new_y_train = y_train( 1 : train_m , :);

test_m = size( X_test);

for i = 1 : test_m
    pred(i) = kNN( new_X_train, new_y_train, k, X_test( i, :));
end
end