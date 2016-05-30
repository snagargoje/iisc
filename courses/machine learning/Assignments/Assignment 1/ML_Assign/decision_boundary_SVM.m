function[h1 h2] = decision_boundary_SVM(SVM_model)
% This function plots the decision boundary for your classifier with respect
% to the training data, labels given. Note that the arguement 

%model - SVM model returned by SVM_learner.m


   traindata        = SVM_model.traindata;


    mindata         = min(traindata);
    maxdata         = max(traindata);    
    magnify         = 1;
    xresolution     = 0.3;
    yresolution     = 0.3;
    rangex          = [magnify*mindata(1), magnify*maxdata(1)];
    rangey          = [magnify*mindata(2), magnify*maxdata(2)];
    

    [x y]           = meshgrid(rangex(1) : xresolution : rangex(2), rangey(1) : yresolution : rangey(2));
    x               = reshape(x, [size(x, 1)*size(x, 2), 1]);
    y               = reshape(y, [size(y, 1)*size(y, 2), 1]);
    testset         = [x y];

    
    tic
    for i = 1:size(testset, 1)    
        classifier_labels(i) = SVM_classifier([testset(i,1) testset(i,2)], SVM_model);
    end
    toc
    
    h1 = figure;
    hold on;
    plot(testset(find(classifier_labels == 1), 1), testset(find(classifier_labels == 1), 2), '.r');    
    plot(testset(find(classifier_labels == -1), 1), testset(find(classifier_labels == -1), 2), '.b');

    h2 = figure;
    hold on;
    plot(testset(find(classifier_labels == 1), 1), testset(find(classifier_labels == 1), 2), '.r');    
    plot(testset(find(classifier_labels == -1), 1), testset(find(classifier_labels == -1), 2), '.b');

    plot(traindata(find(SVM_model.trainlabels == 1), 1), traindata(find(SVM_model.trainlabels == 1), 2), '.k');
    plot(traindata(find(SVM_model.trainlabels == -1), 1), traindata(find(SVM_model.trainlabels == -1), 2), '.y');
end

