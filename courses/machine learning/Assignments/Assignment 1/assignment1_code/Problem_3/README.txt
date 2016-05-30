README - Problem 3

------------------

This directory contains the digits recognition dataset in the file data_digit.mat

It contains the following data. You can call load('data_digit.mat') to access them.

(Each digit is represented as a vector of size 1 X 256) 

 

 NAME              SIZE
 test              324x256

 testlabels        324x1 
 train            1289x256
 
 trainlabels      1289x1

 

One can view the image i (a vector of size 1 X 256) using the following matlab commands
im = reshape(traindata(i, :), 16, 16);
imshow(im');
