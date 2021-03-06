function [ model ] = max_lhood_gauss_est_param( X, Yx,ques)
% Input  :  X - training instances, Yx - training labels
% Output :  model - contains the estimated parameters of each
%           Gaussian (means and covariance matrices)

    % Add code here for parameter estimation
    
    %calculate N
    N = size(Yx,1);
    N_1 = sum(Yx == 1);
    N_2 = sum(Yx == 2);
    N_3 = sum(Yx == 3);
    
    %calculate pi
    pi_1 = N_1/N;
    pi_2 = N_2/N;
    pi_3 = N_3/N;
    
    %calculate mu
    mu_1 = sum(X(Yx == 1,:))/N_1;
    mu_2 = sum(X(Yx == 2,:))/N_2;
    mu_3 = sum(X(Yx == 3,:))/N_3;
    
    %calculate S
    x_1 = X(Yx==1,:) - ones(size(X(Yx==1,:)))*diag(mu_1);
    x_2 = X(Yx==2,:) - ones(size(X(Yx==2,:)))*diag(mu_2);
    x_3 = X(Yx==3,:) - ones(size(X(Yx==3,:)))*diag(mu_3);
    s_1 = transpose(x_1)*x_1 / N_1;
    s_2 = transpose(x_2)*x_2 / N_2;
    s_3 = transpose(x_3)*x_3 / N_3;
    s = (N_1/N)*s_1 + (N_2/N)*s_2 + (N_3/N)*s_3;
    
    %calculate sigma
    switch(ques)
        case '1a'
            sigma_1 = (trace(s)/2)*eye(size(s));
            sigma_2 = sigma_1;
            sigma_3 = sigma_1;
        case '1b'
            sigma_1 = diag(diag(s));  
            sigma_2 = sigma_1;
            sigma_3 = sigma_1;
        case '1c'
            sigma_1 = s;
            sigma_2 = sigma_1;
            sigma_3 = sigma_1;
        case '2a'
            sigma_1 = (trace(s_1)/2)*eye(size(s_1));
            sigma_2 = (trace(s_2)/2)*eye(size(s_2));
            sigma_3 = (trace(s_3)/2)*eye(size(s_3));
            
        case '2b'
            sigma_1 = diag(diag(s_1));
            sigma_2 = diag(diag(s_2));
            sigma_3 = diag(diag(s_3));
        case '2c'
            sigma_1 = s_1;
            sigma_2 = s_2;
            sigma_3 = s_3;
    end
    %calculate w
    sigma1_inv = inv(sigma_1);
    w_1 = sigma1_inv*transpose(mu_1);
    sigma2_inv = inv(sigma_2);
    w_2 = sigma2_inv*transpose(mu_2);
    sigma3_inv = inv(sigma_3);
    w_3 = sigma3_inv*transpose(mu_3);

    
    %calculate w0
    w0_1 = -0.5*mu_1*sigma1_inv*transpose(mu_1) + log(pi_1);
    w0_2 = -0.5*mu_2*sigma2_inv*transpose(mu_2) + log(pi_2);
    w0_3 = -0.5*mu_3*sigma3_inv*transpose(mu_3) + log(pi_3);
    
    
    % Change the line below and set the variable model appropriately.
    %model = [];
    model.mu_1 = mu_1;
    model.mu_2 = mu_2;
    model.mu_3 = mu_3;
    model.s_1 = s_1;
    model.s_2 = s_2;
    model.s_3 = s_3;
    model.s = s;
    model.sigma_1 = sigma_1;
    model.sigma_2 = sigma_2;
    model.sigma_3 = sigma_3;
    model.w_1 = w_1;
    model.w_2 = w_2;
    model.w_3 = w_3;
    model.w0_1 = w0_1;
    model.w0_2 = w0_2;
    model.w0_3 = w0_3;
end

