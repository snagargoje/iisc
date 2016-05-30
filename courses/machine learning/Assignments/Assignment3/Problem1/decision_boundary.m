function decision_boundary( model )
% Input  : model - is the model learnt using max_lhood_gauss_est_param.m.
% Output : Decision boundary plot for the model

x1range=0:0.02:3;
x2range=0:0.02:4;
M = length(x1range);
N = length(x2range);
[X1 X2] = meshgrid(x1range, x2range);
X1 = reshape(X1, M*N, 1);
X2 = reshape(X2, M*N, 1);
X = [X1 X2];

pred = max_lhood_gauss_classify(model, X);

hold on;
c1 = pred==1;
c2 = pred==2;
c3 = pred==3;

plot(X(c1,1), X(c1,2),'r.');
plot(X(c2,1), X(c2,2),'g.');
plot(X(c3,1), X(c3,2),'b.');

end

