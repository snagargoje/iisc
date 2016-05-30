function[model] = SVM_learner(traindata, trainlabels, C, kerneltype, d)
    % INPUT : 
    % traindata   - m X n matrix, where m is the number of training points
    % trainlabels - m X 1 vector of training labels for the training data
    % C           - SVM regularization parameter (positive real number)
    % kerneltype  - one of the strings 'linear', 'poly', 'rbf'
    %               corresponding to the linear, polynomial, and gaussian kernels
    %               respectively.
    % d           - Integer parameter indicating the degree of the
    %               polynomial for polynomial kernel, or the width
    %               parameter for the gaussian kernel. Not used for the
    %               linear kernel.
    
    % OUTPUT
    % returns the structure 'model' which has the following fields, in
    % addition to the training data/parameters.(You can choose to add more
    % fields to this structure before saving if needed by your implementation)
    
    
    % alphas      - m X 1 vector of support vector coefficients
    % b           - SVM bias
    % objective   - Final optimal objective value of the SVM solver
    % support_vectors - the subset of training data, which are the support
    % vectors
    
    % default code below, remove that and write the code for solving the
    % SVM formulation using quadprog function
    % The model is saved into model.mat, which will be read in the
    % SVM_classifier routine
   
    K = computeKernel(traindata,traindata,kerneltype,d);
    H = trainlabels * trainlabels' ;
    H = H .* K;
    
    f = -1 * ones(size(traindata,1),1);
    
    Aeq = trainlabels';
    
    Beq = 0;
    
    lb =  zeros(size(trainlabels,1),1);
    
    ub =  C*ones(size(traindata,1),1);
    
    options = optimset('quadprog');
    options.MaxIter = 200;
    options.Algorithm = 'interior-point-convex' ;
    
    [alphas fval] = quadprog(H,f,[],[],Aeq,Beq,lb,ub,[],options);
    
    %w = (trainlabels .* alphas)' * traindata ;
    
    %min1 = min(w * (traindata(trainlabels == 1,:))');
    %max1 = max(w * (traindata(trainlabels == -1,:))');
    indices = (abs(alphas - 0.0) >= 0.00001 ) & (abs(alphas - double(C))>=0.00001 );
    SV = traindata(indices==1,:);
    SV_labels = trainlabels( indices == 1, :);
    K = computeKernel(traindata,SV,kerneltype,d);
    
    b = 0;  
    for i = 1 : size( SV, 1)
        sum = 0;
        %for j = 1 : size( ind, 1)
        for j = 1 : size( traindata, 1)
            sum = sum + alphas( j) * trainlabels( j) * K( j, i);
        end
        b = b + ( SV_labels( i) - sum);
    end
    
    b = b / size( SV, 1) ;
    %%size(w)
    %w = w * K;
    %w = sum(w);
    %w = sum(SV_labels - w' );
    %b = b/size(SV,1);
    %min1 = min(w * (computeKernel(traindata,traindata(trainlabels == 1,:),kerneltype,d)));
    %max1 = max(w * (computeKernel(traindata,traindata(trainlabels == -1,:),kerneltype,d)));
    %min1 = min(w * traindata(trainlabels==1,:)');
    %max1 = max(w * traindata(trainlabels==-1,:)');
    %b = -0.5 * (min1 + max1);
    objective = -fval;
    %alphas = repmat(0, size(traindata, 1), 1);
    model.b = b;
    model.objective = objective;
    model.alphas = alphas; 
    model.kerneltype = kerneltype;
    model.d = d;
    model.C = C;
    model.traindata = traindata;
    model.trainlabels = trainlabels;
    model.support_vectors = SV;
    save('SVM_model.mat', 'model');
end
