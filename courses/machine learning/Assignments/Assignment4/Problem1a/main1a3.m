clear
load GMM_data.mat
load model1a3.mat
O = 2;          %Number of coefficients in a vector
T = 1000;         %Number of vectors in a sequence
nex = 1;        %Number of sequences
data = reshape(X',O,T,nex);

M = 3;          %Number of mixtures
Q = 1;          %Number of states
cov_type = 'spherical';

prior0 = normalise(rand(Q,1));
transmat0 = mk_stochastic(rand(Q,Q));

[mu0, Sigma0] = mixgauss_init(Q*M, data, cov_type);
mu0 = reshape(mu0, [O Q M]);
Sigma0 = reshape(Sigma0, [O O Q M]);
mixmat0 = mk_stochastic(rand(Q,M));

[LL, prior, transmat, mu, Sigma, mixmat, loglik3, mu1, sigma1, mu2, sigma2, mu3, sigma3] =  mhmm_em_dump(data, prior0, transmat0, mu0, Sigma0, mixmat0, 'max_iter',10);

h1 = figure();
hold on
    contour_plot(mu1(:,1)',sigma1(:,:,1,1),'r');
    contour_plot(mu1(:,2)',sigma1(:,:,1,2),'g');
    contour_plot(mu1(:,3)',sigma1(:,:,1,3),'b');

h2 = figure();
hold on
    contour_plot(mu2(:,1)',sigma2(:,:,1,1),'r');
    contour_plot(mu2(:,2)',sigma2(:,:,1,2),'g');
    contour_plot(mu2(:,3)',sigma2(:,:,1,3),'b');

h3 = figure();
hold on
    contour_plot(mu3(:,1)',sigma3(:,:,1,1),'r');
    contour_plot(mu3(:,2)',sigma3(:,:,1,2),'g');
    contour_plot(mu3(:,3)',sigma3(:,:,1,3),'b');

h4 = figure();
plot(3:3:9,loglik3);