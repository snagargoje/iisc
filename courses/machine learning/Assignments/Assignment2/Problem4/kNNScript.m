tic
h1 = figure;
hold on

r = 10;
cnt = 1;
pred_tr = zeros( 7291, 3);
pred_te = zeros( 2007, 3);
for tp = 0 : 2
    
    k = 10 ^ tp - 1;
    if( k == 0)
        k = 1;
    end
    x(cnt) = k;
    
    istest = 0;
    [m n] = size( train);

    mp = zeros( m, 1);
    kmap = zeros( m, 1);
    indices = zeros( m, 1);

    pred_train = zeros( 1, m);

    for test_ind = 1 : size( train, 1)
        for i = 1 : m
            if( istest == 1)
                mp( i) = te_dist( test_ind, i);
            else
                mp( i) = tr_dist( test_ind, i);
            end
        end

        [ kmap, indices] = sort( mp);

        decision = zeros( r, 1);

        for i = 1 : k
            decision( label_train( indices( i)) + 1) = decision( label_train( indices( i)) + 1) + 1;
        end

        %    decision

        [ digit pos] = max( decision);
        %    digit
        %    pos
        pred_train(test_ind) = pos - 1;
        pred_tr( test_ind, cnt) = pos - 1;

    end    
    size( pred_train)
    size( label_train)
    train_error(cnt) = multiclass_error( transpose( pred_train), label_train)

    istest = 1;
    [m n] = size( test);

    mp = zeros( m, 1);
    kmap = zeros( m, 1);
    indices = zeros( m, 1);

    pred_test = zeros( 1, m);
    for test_ind = 1 : size( test, 1)
        for i = 1 : m
            if( istest == 1)
                mp( i) = te_dist( test_ind, i);
            else
                mp( i) = tr_dist( test_ind, i);
            end
        end

        [ kmap, indices] = sort( mp);

        decision = zeros( r, 1);

        for i = 1 : k
            decision( label_train( indices( i)) + 1) = decision( label_train( indices( i)) + 1) + 1;
        end

        %    decision

        [ digit pos] = max( decision);
        %    digit
        %    pos
        pred_test(test_ind) = pos - 1;
        pred_te( test_ind, cnt) = pos - 1;

    end    
    %size( pred_test)
    %size( label_test)
    test_error(cnt) = multiclass_error( transpose( pred_test), label_test)
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