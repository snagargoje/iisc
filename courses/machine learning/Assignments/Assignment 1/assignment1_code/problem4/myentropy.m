function N = myentropy(p,q)
    prob = p/(p+q);
    if prob*(1-prob) ~= 0
        N = -prob*log2(prob) - (1-prob)*log2(1-prob) ;
    else
        N = 0;
    end
end