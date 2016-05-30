function[labels] = SVM_classifier(testdata, model)
    % INPUT
    % testdata - m X n matrix of the test data samples
    % model    - The SVM model structure returned by SVM_learner
    
    % OUTPUT
    % labels - The predicted labels
    
    % Change the code below
    labels = ones(size(testdata, 1), 1);
    %load( 'SVM_model.mat');
    
    
    %w = transpose( model.alphas .* model.trainlabels) * model.traindata;
    
    
%    size( testdata)
%    size( transpose( w))
    
    %b = ones( 1000, 1) .* model.b;
    
    %size( b)
    
%    temp =  (testdata * transpose( w));
%    testval = temp;
 %   model.b
%    for i = 1 : 1000
%        testval( i) = temp( i) + model.b;
%    end
    %testval = (testdata * transpose( w)) + model.b;
    %labels = sign( testval);
    
    K = zeros( size( model.traindata, 1), size( testdata, 1));
    
    for i = 1 : size( model.traindata, 1)
        for j = 1 : size( testdata, 1)
            K( i, j) = computeKernel( model.traindata( i, :), testdata( j, :), model.kerneltype, model.d);
        end
    end
    
    for i = 1 : size( testdata, 1)
        temp = 0;
        for( j = 1 : size( model.traindata, 1))
            temp = temp + model.alphas( j) * model.trainlabels( j) * K( j, i);
        end
        labels( i) = sign( temp);
    end
end