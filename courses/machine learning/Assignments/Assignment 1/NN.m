function result = NN(X,Y,k,x)
   d = dist(X,x);
   s = size(d);
   kmin = 1:k
   for j = k+1:s
    if d(j) < max( d(kmin) )
        [m,r] = max(d(kmin));
        kmin(r) = j
    end
   end
   ysum = sum(Y(kmin));
   if ysum<0.5 
    result = 0;
   else
       result =1;
   end 
end