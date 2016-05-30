model = max_lhood_gauss_est_param(X,Yx,'1a');
figure
decision_boundary(model)
figure
hold on
contour_plot(model.mu_1,model.sigma_1,'r');
contour_plot(model.mu_2,model.sigma_2,'g');
contour_plot(model.mu_3,model.sigma_3,'b');
model = max_lhood_gauss_est_param(X,Yx,'1b');
figure
decision_boundary(model)
figure
hold on
contour_plot(model.mu_1,model.sigma_1,'r');
contour_plot(model.mu_2,model.sigma_2,'g');
contour_plot(model.mu_3,model.sigma_3,'b');
model = max_lhood_gauss_est_param(X,Yx,'1c');
figure
decision_boundary(model)
figure
hold on
contour_plot(model.mu_1,model.sigma_1,'r');
contour_plot(model.mu_2,model.sigma_2,'g');
contour_plot(model.mu_3,model.sigma_3,'b');
    model = max_lhood_gauss_est_param(X,Yx,'2a');
figure
decision_boundary(model)
figure
hold on
contour_plot(model.mu_1,model.sigma_1,'r');
contour_plot(model.mu_2,model.sigma_2,'g');
contour_plot(model.mu_3,model.sigma_3,'b');
model = max_lhood_gauss_est_param(X,Yx,'2b');
figure
decision_boundary(model)
figure
hold on
contour_plot(model.mu_1,model.sigma_1,'r');
contour_plot(model.mu_2,model.sigma_2,'g');
contour_plot(model.mu_3,model.sigma_3,'b');
model = max_lhood_gauss_est_param(X,Yx,'2c');
figure
decision_boundary(model)
figure
hold on
contour_plot(model.mu_1,model.sigma_1,'r');
contour_plot(model.mu_2,model.sigma_2,'g');
contour_plot(model.mu_3,model.sigma_3,'b');
