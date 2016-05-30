function contour_plot(mu, sigma, linespec)
% Input  : mu - is the mean of a 2-D Gaussian.
%          sigma - is the 2x2 covariance matrix of the Gaussian.
%          linespec - use this to specify the color of the plot,
%          e.g. 'r', 'g', 'b', etc.

% Output : Contour plot for the Gaussian
% Tip    : Use "hold on;" and call this three times (one for each Gaussian).
x1range=0:0.1:4;
x2range=0:0.1:4;
[X1 X2] = meshgrid(x1range, x2range);

Z = zeros(length(x2range), length(x1range));
for n1 = 1:length(x2range)
    for n2 = 1:length(x1range)
        Z(n1,n2) = mvnpdf([X1(n1,n2) X2(n1,n2)], mu, sigma);
    end
end
contour(X1, X2, Z, 2, linespec);
axis square;