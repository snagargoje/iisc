
model_rbf_001 = SVM_learner( train, trainlabels, 0.001, 'rbf', 1);
train_pred = SVM_classifier( train, model_rbf_001);
test_pred = SVM_classifier( test, model_rbf_001);
train_error(1) = classification_error( train_pred, trainlabels);
test_error(1) = classification_error( test_pred, testlabels);

model_rbf_01 = SVM_learner( train, trainlabels, 0.01, 'rbf', 1);
train_pred = SVM_classifier( train, model_rbf_01);
test_pred = SVM_classifier( test, model_rbf_01);
train_error(2) = classification_error( train_pred, trainlabels);
test_error(2) = classification_error( test_pred, testlabels);

model_rbf_1 = SVM_learner( train, trainlabels, 1, 'rbf', 1);
train_pred = SVM_classifier( train, model_rbf_1);
test_pred = SVM_classifier( test, model_rbf_1);
train_error(3) = classification_error( train_pred, trainlabels);
test_error(3) = classification_error( test_pred, testlabels);

model_rbf_10 = SVM_learner( train, trainlabels, 10, 'rbf', 1);
train_pred = SVM_classifier( train, model_rbf_10);
test_pred = SVM_classifier( test, model_rbf_10);
train_error(4) = classification_error( train_pred, trainlabels);
test_error(4) = classification_error( test_pred, testlabels);

model_rbf_100 = SVM_learner( train, trainlabels, 100, 'rbf', 1);
train_pred = SVM_classifier( train, model_rbf_100);
test_pred = SVM_classifier( test, model_rbf_100);
train_error(5) = classification_error( train_pred, trainlabels);
test_error(5) = classification_error( test_pred, testlabels);

c = [0.01 0.1 1 10 100];
d = log10( c);

h1 = figure;
plot( d, test_error, 'r-+');    
hold on;
plot( d, train_error, 'g--+');
xlabel( 'log_1_0( C)');
ylabel( 'Error');
title( 'Digit Classification : SVM with RBF Kernel');
legend( 'test error', 'train error');
hold off;
