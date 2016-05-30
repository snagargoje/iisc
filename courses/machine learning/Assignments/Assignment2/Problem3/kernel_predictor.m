function [ypred] = kernel_predictor(test,train,kernel,d,model)
%load('2e.mat');
[m n] = size(test);
ypred = zeros(size(test,1),1);
%train = [train , ones(m,1)];
%test = [test , ones(m,1)];
for i=1:size(test,1)
    K = computeKernel(test(i,:),train,kernel,d);
size(K)
%size(w)
ypred(i) = (model.alphas)' * ([K' ; -K']); 
    %ypred(i) = K*w;
end
%ypred = w'*test' ;
save('2e2.mat','ypred');

end