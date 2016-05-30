Files included:
---------------
	*	GMM_data.mat
		This gives the following variables when loaded in MATLAB.
		- X , an m x 2 matrix of instances (one per row). This is the training data.
		- Xho, an n x 2 matrix of data instances (one per row). This is the held-out data.
	*	GMM_llhood.m
		This is a skeleton function that you need to fill in with the right code, as described in the question.
        *	contour_plot.m
		A function to plot the contours of a Gaussian given its mean and Covariance matrix
	*	HMM_data_asgn4.mat
		This gives the following variables when loaded in MATLAB.
		- data , an 2 x m x d matrix. This is a collection of m sequences, each of length d, and dimension 2. This is the training data.
		- data2, an 2 x n x d matrix. This is the held-out data.


Hint for using HMM toolbox for learning a GMM:
----------------------------------------------
Use a HMM with one state having a mixture of Gaussians. To initialize such a model, look at the example codes in the toolbox's HowTo page (http://www.cs.ubc.ca/~murphyk/Software/HMM/hmm_usage.html).
