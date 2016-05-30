
load( 'data_simulated.mat')


train_error = zeros( 1, 3);
test_error = zeros( 1, 3);

cnt = 1;
for i = 0 : 2 : 4
    C = 0.01 * (10 ^ i)
    model = SVM_learner( traindata, trainlabels, C, 'linear', 0);
    train_pred = SVM_classifier( traindata, model);
    test_pred = SVM_classifier( testdata, model);
    train_error( 1, cnt) = classification_error( train_pred, trainlabels);
    test_error( 1, cnt) = classification_error( test_pred, testlabels);
    cnt = cnt + 1;
end

train_table( 1, :) = train_error;
test_table( 1, :) = test_error;



train_error = zeros( 1, 3);
test_error = zeros( 1, 3);
cnt = 1;
for i = 0 : 2 : 4
    c = 0.01 * (10 ^ i)
    model = SVM_learner( traindata, trainlabels, c, 'poly', 2);
    train_pred = SVM_classifier( traindata, model);
    test_pred = SVM_classifier( testdata, model);
    train_error( 1, cnt) = classification_error( train_pred, trainlabels);
    test_error( 1, cnt) = classification_error( test_pred, testlabels);
    cnt = cnt + 1;
end

train_table( 2, :) = train_error;
test_table( 2, :) = test_error;

cnt = 1;
train_error = zeros( 1, 3);
test_error = zeros( 1, 3);
for i = 0 : 2 : 4
    c = 0.01 * (10 ^ i)
    model = SVM_learner( traindata, trainlabels, c, 'poly', 3);
    train_pred = SVM_classifier( traindata, model);
    test_pred = SVM_classifier( testdata, model);
    train_error( 1, cnt) = classification_error( train_pred, trainlabels);
    test_error( 1, cnt) = classification_error( test_pred, testlabels);
    cnt = cnt + 1;
end

train_table( 3, :) = train_error;
test_table( 3, :) = test_error;

cnt = 1;
load( 'data_simulated.mat');
train_error = zeros( 1, 3);
test_error = zeros( 1, 3);
for i = 0 : 2 : 4
    c = 0.01 * (10 ^ i)
    model = SVM_learner( traindata, trainlabels, c, 'rbf', 1);
    train_pred = SVM_classifier( traindata, model);
    test_pred = SVM_classifier( testdata, model);
    train_error( 1, cnt) = classification_error( train_pred, trainlabels);
    test_error( 1, cnt) = classification_error( test_pred, testlabels);
    cnt = cnt + 1;
end

train_table( 4, :) = train_error;
test_table( 4, :) = test_error;

cnt = 1;
load( 'data_simulated.mat');
train_error = zeros( 1, 3);
test_error = zeros( 1, 3);
for i = 0 : 2 : 4
    c = 0.01 * (10 ^ i)
    model = SVM_learner( traindata, trainlabels, c, 'rbf', 4);
    train_pred = SVM_classifier( traindata, model);
    test_pred = SVM_classifier( testdata, model);
    train_error( 1, cnt) = classification_error( train_pred, trainlabels);
    test_error( 1, cnt) = classification_error( test_pred, testlabels);
    cnt = cnt + 1;
end

train_table( 5, :) = train_error;
test_table( 5, :) = test_error;