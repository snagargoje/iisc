function [percent, train_error, test_error] = p2bc( X_train, y_train, k, X_test, y_test)
    cnt = 1;
    for i = 10:10:100
        fprintf( 'Using %d%% training data\n', i);
        %disp( 'Using training data');
        percent( cnt) = i;
        sample_size = (i * size( X_train, 1)) / 100;
        sample_X_train = X_train( 1 : sample_size, :);
%        y_d = (i * size( y_test, 1) / 100);
        sample_y_train = y_train( 1 : sample_size, :);
%        y(cnt) = classification_error( transpose(run_kNN( X_train, y_train, k, X_test, i)), y_true);
        test_error( cnt) = classification_error( transpose(run_kNN( X_train, y_train, k, X_test, i)), y_test);        
        train_error( cnt) = classification_error( transpose(run_kNN( X_train, y_train, k, sample_X_train, i)), sample_y_train);
        cnt = cnt + 1;
    end
    %plot( percent, test_error);
    h1 = figure;
    plot( percent, test_error, 'r-+');    
    hold on;
    plot( percent, train_error, 'g--+');
    xlabel( 'Percentage of training data used');
    ylabel( 'Error');
    title( strcat('Learning Curve for k = ' , int2str(k)));
    legend( 'test error', 'train error');
    hold off;
end
