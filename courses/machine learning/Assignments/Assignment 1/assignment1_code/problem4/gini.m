function N = gini(p,q)
    prob = p/(p+q);
    N = prob * (1-prob);
end