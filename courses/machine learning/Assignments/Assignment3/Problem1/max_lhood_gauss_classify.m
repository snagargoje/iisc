function [ pred ] = max_lhood_gauss_classify( model, T )
% Input  : model - is the model learnt using max_lhood_gauss_est_param.m.
%          T - is the test data instances (one per row).
% Output : pred - is a vector of predicted labels (one per row)

    % Add code here for classification

    %calculate a
    a_1 = transpose(model.w_1)*T' + model.w0_1;
    a_2 = transpose(model.w_2)*T' + model.w0_2;
    a_3 = transpose(model.w_3)*T' + model.w0_3;
    
    %calculate probs
    exp_a1 = exp(a_1);
    exp_a2 = exp(a_2);
    exp_a3 = exp(a_3);
    exp_sum = exp_a1 + exp_a2 + exp_a3;
    

    
    %predict classes
    pred = zeros(size(T,1),1);
    p = zeros(3,1);
    for i = 1:size(T,1)
        p(1) = exp_a1(i)/exp_sum(i);
        p(2) = exp_a2(i)/exp_sum(i);
        p(3) = exp_a3(i)/exp_sum(i);
        
        [b j] = max(p);
        pred(i) = j;
    end
    
    % Change the line below and set the predictions appropriately.
    %pred = zeros(size(T,1),1);
end

