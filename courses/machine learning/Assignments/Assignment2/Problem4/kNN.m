function pred = kNN( X_train, y_train, k, r, x_test) 
    % getting size of training set
    [m n] = size( X_train);
    
    mp = zeros( m, 1);
    kmap = zeros( m, 1);
    indices = zeros( m, 1);
    
    % calculating distances
    for i = 1 : m
        diff = ( x_test - X_train( i, :)) .^ 2;
        dist = sum( diff);
        mp( i) = sqrt( dist);
    end
    
    % sorting based on distances
    [ kmap, indices] = sort( mp);
    
    decision = zeros( r, 1);
    
    %selecting nearest k neighbours
    for i = 1 : k
        decision( y_train( indices( i)) + 1) = decision( y_train( indices( i)) + 1) + 1;
    end
    
    [ digit pos] = max( decision);

    pred = pos - 1;
end

