[ tr_m tr_n] = size( train);
[ te_m te_n] = size( test);

tr_dist = zeros( tr_m, tr_m);
te_dist = zeros( te_m, tr_m);

for i = 1 : tr_m
    for j = 1 : tr_m
        tr_dist( i, j) = sqrt( sum( ( train(i, :) - train(j, :)) .^ 2));
    end
end

for i = 1 : te_m
    for j = 1 : tr_m
        te_dist( i, j) = sqrt( sum( ( test(i, :) - train(j, :)) .^ 2));
    end
end