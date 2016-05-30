%load( 'data_digit_10class.mat');
tic
[ tr_m tr_n] = size( train) 
[ te_m te_n] = size( test)

tr_m = tr_m ;
te_m = te_m ;
%k = 9;

r = 10;
h1 = figure;
hold on

cnt = 1;
pred_train = label_train;
pred_test = label_test;
for tp = 0 : 2
    %cnt
    k = 10 ^ tp - 1;
    if( k == 0)
        k = 1;
    end
    x(cnt) = k;

    %calculating training error
    for i = 1 : tr_m
        pred_train(i, 1) = kNN( train, label_train, k, r, train(i, :));
        pred_tr( i, cnt) = pred_train( i, 1);
    end
    train_error( cnt) = multiclass_error( pred_train, label_train)

    %calculating test error
    for i = 1 : te_m
        pred_test(i, 1) = kNN( train, label_train, k, r, test(i, :));
        pred_te( i, cnt) = pred_test( i, 1);
    end
    test_error( cnt) = multiclass_error( pred_test, label_test)

    cnt = cnt + 1;
end
    
axis auto normal;
plot( x, test_error, 'r-+');
plot( x, train_error, 'g--+');
legend('test error', 'train error');
title( 'Errors as function of k');
xlabel('k');
ylabel('Error');
hold off;

toc