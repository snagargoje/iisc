cnt = 1;
k = 5;

tr_r = size(train, 1);
te_r = size( test, 1);
tr_c = size( train, 2);

train_error = zeros( 10, 1);
test_error = zeros( 10, 1);
for i = 10:10:100
    fprintf( 'Using %d%% training data\n', i);
    percent( cnt) = i;
    sz = int16( i * tr_r / 100);
    sample_train = train( 1 : sz, :);
    sample_train_labels = trainlabels( 1 : sz, :);
    
    %calculating training error
    pred = zeros(sz,1);
    for j = 1:sz
        pred( j) = kNN( sample_train, sample_train_labels, k, sample_train( j, :));
    end
    train_error( cnt) = classification_error( pred, sample_train_labels);
    
    %calculating test error
    pred = zeros( te_r,1);
    for j = 1:te_r
        pred( j) = kNN( sample_train, sample_train_labels, k, test( j, :));
    end
    test_error( cnt) = classification_error( pred, testlabels);
    
    cnt = cnt + 1;
end

%percent
%train_error
%test_error
h1 = figure;
plot( percent, test_error, 'r-+');    
hold on;
plot( percent, train_error, 'g--+');
xlabel( 'Percentage of training data used');
ylabel( 'Error');
title( 'Digit Classification : Learning Curve for k = 5');
legend( 'test error', 'train error');
hold off;






mis = find( pred ~= testlabels);
pause( 20);
for i = 1: 8
    a = reshape( test( mis( i), :), 16, 16);
    fprintf( '%d,   %d\n', pred( mis( i)), testlabels( mis( i)));
    imshow( transpose( a));
    pause( 10);
end


