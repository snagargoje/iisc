clear
load GMM_data.mat
loglik = 1:10;
O = 2;          %Number of coefficients in a vector
T = 1000;         %Number of vectors in a sequence
nex = 1;        %Number of sequences
data = reshape(X',O,T,nex);

for k = 1:10
M = k;          %Number of mixtures
Q = 1;          %Number of states
cov_type = 'spherical';

%data = randn(O,T,nex);
% initial guess of parameters
prior0 = normalise(rand(Q,1));
transmat0 = mk_stochastic(rand(Q,Q));

[mu0, Sigma0] = mixgauss_init(Q*M, data, cov_type);
mu0 = reshape(mu0, [O Q M]);
Sigma0 = reshape(Sigma0, [O O Q M]);
mixmat0 = mk_stochastic(rand(Q,M));

[model.LL, model.prior1, model.transmat1, model.mu1, model.Sigma1, model.mixmat1] =     mhmm_em(data, prior0, transmat0, mu0, Sigma0, mixmat0, 'max_iter', 10);


save(sprintf('model1a%d.mat',k) ,'model');

end
save ans1a1
