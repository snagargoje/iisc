Data Files
----------

1) max_lhood_gauss_data.mat

Contains the following matrices

* X (600 x 2) --- training instances (one instance per row)
* Yx (600 x 1) --- training labels (takes 3 values---1, 2 or 3)
* T (3000 x 2) --- test instances (one instance per row)
* Yt (3000 x 1) --- test labels

2) max_lhood_gauss_data_subsets.mat

Contains the following data structures

* subX (1 x 6 cell) --- contains the 6 subsets of the training instances.
                        Use subX{n} to get the nth subset (an array of instances).
* subYx (1 x 6 cell) --- contains the labels corresponding to the subsets in subX.


