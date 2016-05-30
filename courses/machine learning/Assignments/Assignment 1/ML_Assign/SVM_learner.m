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
    
    b = 0;
    objective = 0;
    alphas = repmat(0, size(traindata, 1), 1);
    
    K = zeros( size( traindata));
    
    for i = 1 :size( traindata, 1)
        for j = 1 : size( traindata, 1)
            K( i, j) = computeKernel( traindata( i, :), traindata( j, :), kerneltype, d);
        end
    end
    
    H = zeros( size( traindata, 1));
    for i = 1 : size( traindata, 1)
       %i
        for j = 1 : size( traindata, 1)
            inner_p = K( i, j);
            %inner_p = traindata(i, :) * transpose( traindata(j, :));
            inner_p = inner_p * trainlabels(i) * trainlabels(j);
            H( i, j) = inner_p ;%* ( 0.5);
        end
    end

    f = ones( size(traindata, 1), 1) * -1;

    Aeq = transpose( trainlabels);
    Beq = 0;

    % set C here
    %C = 0.1;

    lb = zeros( size( traindata, 1), 1);
    ub = ones( size( traindata, 1), 1) .* C;

    %fprintf( 'Reached here');
    %alpha = quadprog( H, f, [], [], Aeq, Beq, lb, ub);
    options = optimset( 'quadprog');
    options.MaxIter = 2000;
    options.Algorithm = 'interior-point-convex';
    [alphas objective] = quadprog( H, f, [], [], Aeq, Beq, lb, ub, [], options);
    w = transpose( alphas .* trainlabels) * traindata;

    model.objective = objective;
    model.alphas = alphas; 
    model.kerneltype = kerneltype;
    model.d = d;
    model.C = C;
    model.traindata = traindata;
    model.trainlabels = trainlabels;
    
    %l1 = find( abs( alpha - 0.0) < 0.0001);
    %size( l1)
    %l2 = find( abs( alpha - C) < 0.0001);
    %size( l2)
    
    eps = 0.00001;
    
    for i = 1 : size( traindata, 1)
        temp(i) = (abs( alphas(i) - 0.0) < eps) || (abs( alphas(i) - C) < eps) ;
    end
    
    ind = find( temp == 0);
    
    model.support_vectors = traindata( ind, :);

%    ssv = size( model.support_vectors);
    
    for i = 1 : size( ind, 1)
        sum = 0;
        %for j = 1 : size( ind, 1)
        for j = 1 : size( traindata, 1)
            sum = sum + alphas( j) * trainlabels( j) * K( ind( i), j);
        end
        b = b + ( trainlabels( ind( i)) - sum);
    end
    
    b = b / size( ind, 1) ;
    
    %support_labels = trainlabels( ind, :);
    %b = (-0.5) * (min( model.support_vectors( find( support_labels == 1), :) * transpose( w)) + max( model.support_vectors( find( support_labels == -1), :) * transpose( w)));
    
    
    model.b = b;
    save('SVM_model.mat', 'model');
end