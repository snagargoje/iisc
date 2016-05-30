function[model]  = SVM_learner(traindata,trainlabels,kernel,d,C,eps)
    [m n] = size(traindata);
    
    %compute the Kernel
    K = computeKernel(traindata,traindata,kernel,d);
    
    %compute the Hessian Matrix
    H = [K -K; -K K];
    alphas = zeros(2*m,1);
    
    %compute f
    f1 = eps - trainlabels ;
    f2 = eps + trainlabels ;
    f = [f1 ; f2] ;
    
    %put lower and upper bounds
    lb = zeros(2*m,1);
    ub = C*ones(2*m,1);
    
    %put equality constraints
    Aeq = [ones(m,1) ; (-1)*ones(m,1)]';
    beq = 0;%zeros(2*m,1);
    
    %set options
    options = optimset('quadprog');
    options.MaxIter = 20;
    options.Algorithm = 'interior-point-convex' ;

   %call quadprog
   [alphas fvals] = quadprog(H,f,[],[],Aeq,beq,lb,ub,[],options);
   
   save mydata
   
   x = [traindata ; traindata];
   w = Aeq * x ;
    
   model.alphas = alphas;
   model.fval = fvals;
   model.w = w;
save alldata.mat
end