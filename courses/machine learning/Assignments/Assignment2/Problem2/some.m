w = kernel_ridge_learner(train,train_y,0.01,'poly',3);
ypred_test = kernel_predictor(test,train,'poly',3);
ypred_train = kernel_predictor(train,train,'poly',3);
squared_error(ypred_test,test_y')
squared_error(ypred_train,train_y)

w = kernel_ridge_learner(train,train_y,0.1,'poly',3);
ypred_test = kernel_predictor(test,train,'poly',3);
ypred_train = kernel_predictor(train,train,'poly',3);
squared_error(ypred_test,test_y')
squared_error(ypred_train,train_y)


w = kernel_ridge_learner(train,train_y,1,'poly',3);
ypred_test = kernel_predictor(test,train,'poly',3);
ypred_train = kernel_predictor(train,train,'poly',3);
squared_error(ypred_test,test_y')
squared_error(ypred_train,train_y)

w = kernel_ridge_learner(train,train_y,10,'poly',3);
ypred_test = kernel_predictor(test,train,'poly',3);
ypred_train = kernel_predictor(train,train,'poly',3);
squared_error(ypred_test,test_y')
squared_error(ypred_train,train_y)

w = kernel_ridge_learner(train,train_y,100,'poly',3);
ypred_test = kernel_predictor(test,train,'poly',3);
ypred_train = kernel_predictor(train,train,'poly',3);
squared_error(ypred_test,test_y')
squared_error(ypred_train,train_y)

