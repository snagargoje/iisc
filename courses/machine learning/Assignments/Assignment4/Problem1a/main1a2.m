clear
load GMM_data.mat
loglik = 1:10;
for k=1:10
load(sprintf('model1a%d',k));
loglik(k) = GMM_llhood(model,Xho);
end

plot(1:10,loglik);
