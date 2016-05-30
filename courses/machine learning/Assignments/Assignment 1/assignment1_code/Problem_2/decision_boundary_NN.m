function[h1 h2] = decision_boundary_NN(traindata, trainlabels,k)
% This function plots the decision boundary for your classifier with respect
% to the training data, labels given. Note that the arguement 

% traindata 		- M X d matrix, where M is the number of training samples, and d is the dimension of data
% trainlabels 		- M X 1 vector of class labels corresponding to training data. (+/-1)
% classifier 		- function handle. The function corresponding to this handle should return a 
% 			  label vector (of +/-1 ) given a Test matrix.For instance classifier(traindata,labels,[10 5;1 2])
%			  may return  [1 -1] where 1 is the  predicted lable corresponding to the vector [10 5] and 
% 			  -1 to the vector [1 2];

% k 			- Number of neighbours to consider
% displaydata 		- takes value 1/0 : display/not display the training data along with the decision boundary



    mindata         = min(traindata);
    maxdata         = max(traindata);    
    magnify         = 1;
    xresolution     = 0.1;
    yresolution     = 0.1;
    rangex          = [magnify*mindata(1), magnify*maxdata(1)];
    rangey          = [magnify*mindata(2), magnify*maxdata(2)];
    

    [x y]           = meshgrid(rangex(1) : xresolution : rangex(2), rangey(1) : yresolution : rangey(2));
    x               = reshape(x, [size(x, 1)*size(x, 2), 1]);
    y               = reshape(y, [size(y, 1)*size(y, 2), 1]);
    testset         = [x y];

    size(testset)
    
    %classifier_labels = zeros(size(testset,1),1);
    tic
    classifier_labels = mykNNVector(traindata,trainlabels,k,testset);
    %for i = 1:size(testset, 1)    
    %    classifier_labels(i) = mykNN(traindata,trainlabels, k,[testset(i,1) testset(i,2)]);
    %end
    toc
    
    h1 = figure;
    hold on;
    plot(testset(classifier_labels == 1, 1), testset(classifier_labels == 1, 2), '.r');    
    plot(testset(classifier_labels == -1, 1), testset(classifier_labels == -1, 2), '.b');

    h2 = figure;
    hold on;
    plot(testset(classifier_labels == 1, 1), testset(classifier_labels == 1, 2), '.r');    
    plot(testset(classifier_labels == -1, 1), testset(classifier_labels == -1, 2), '.b');

    plot(traindata(trainlabels == 1, 1), traindata(trainlabels == 1, 2), '.k');
    plot(traindata(trainlabels == -1, 1), traindata(trainlabels == -1, 2), '.y');
end
