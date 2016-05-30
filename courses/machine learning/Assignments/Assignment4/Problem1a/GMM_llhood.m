function llhood = GMM_llhood(model,X)

% Input  :  model - structure containing parameters of GMM
%           X - matrix containing data (one instance per row)
% Output :  llhood - loglikelihood of the data X given the model,
%                    i.e. log P(X|model)

% Please change the code below appropriately
O = 2;          %Number of coefficients in a vector
T = 1000;         %Number of vectors in a sequence
nex = 1;        %Number of sequences
data = reshape(X',O,T,nex);

llhood = mhmm_logprob(data, model.prior1, model.transmat1, model.mu1, model.Sigma1, model.mixmat1);

end