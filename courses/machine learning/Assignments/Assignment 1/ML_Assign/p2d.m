function effect_of_k( X_train, y_train, X_test, y_test)
    h1 = figure;
    hold on
    
    cnt = 1;
    for i = 0 : 2
        %cnt
        k = 10 ^ i - 1;
        if( k == 0)
            k = 1;
        end
        k
        x(cnt) = k;
        train_error( cnt) = classification_error( transpose(run_kNN( X_train, y_train, k, X_train, 100)), y_train);
        test_error( cnt) = classification_error( transpose(run_kNN( X_train, y_train, k, X_test, 100)), y_test);
        cnt = cnt + 1;
        %cnt
        k = 5 * (10 ^ i) - 1;
        k
        x(cnt) = k;
        train_error( cnt) = classification_error( transpose(run_kNN( X_train, y_train, k, X_train, 100)), y_train);
        test_error( cnt) = classification_error( transpose(run_kNN( X_train, y_train, k, X_test, 100)), y_test);
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
    
    %[ percent, train_error, test_error] = p2( X_train, y_train, 1, X_test, y_test);
end