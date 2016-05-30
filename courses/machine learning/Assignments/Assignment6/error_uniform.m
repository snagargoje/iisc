function[theta] = error_uniform(u,w)
norm_u = sqrt(u*u');
u = (1/norm_u)*u ;
norm_w = sqrt(w*w');
w = (1/norm_w)*w ;
theta = acos(u*w')/pi ; % this is the probability of misclassification

end