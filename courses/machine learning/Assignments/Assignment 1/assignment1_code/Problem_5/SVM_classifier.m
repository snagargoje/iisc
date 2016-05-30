function[labels] = SVM_classifier(testdata, model)
    % INPUT
    % testdata - m X n matrix of the test data samples
    % model    - The SVM model structure returned by SVM_learner
    
    % OUTPUT
    % labels - The predicted labels
    
    % Change the code below
    %labels = ones(size(testdata, 1), 1);
    K = computeKernel(model.traindata,testdata,model.kerneltype,model.d);
    w = (model.trainlabels .* model.alphas)' ;%* traindata ;
    %size(w)
    w = w * K;
    %labels = w + model.b;
    %w = (model.trainlabels .* model.alphas)' * model.traindata ;
    %labels =( w*testdata' + model.b )';
    %labels = ( w*computeKernel(model.traindata,testdata,model.kerneltype,model.d) + model.b);
    labels = sign(w);
    labels(labels==0) = 1;    %change the sign of zero to be 1
end