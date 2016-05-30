clear
load regression_folds;
eps = 0.1;
[l m n] = size(fold_train);
[l1 m1 n1] = size(fold_test);
C = [0.01 1.0 100.0];
error_test = zeros(l,5);
error_train = zeros(l,5);
for i=1:l
        train = reshape(fold_train(i,:,:),m,n);
        train_y = reshape(fold_train_y(i,:),m,1);
        test = reshape(fold_test(i,:,:),m1,n1);
        test_y = reshape(fold_test_y(i,:),m1,1);
    for j=1:3
        %w = linear_ridge_learner(train,train_y,C(j));
        model = SVM_learner(train,train_y,'linear',0,C(j),eps);
        ypred = kernel_predictor(test,train,'linear',0,model);
        %ypred = linear_predictor_d(test);
        error_test(i,j) = squared_error(ypred,test_y');
        %ypred = linear_predictor_d(train);
        ypred = kernel_predictor(train,train,'linear',0,model);
        error_train(i,j) = squared_error(ypred,train_y');
        save mydata.mat
    end
        save mydata.mat
end

save Result2d.mat