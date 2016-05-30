function [error] = main()
%this function does all the tasks
clear;
load data_simulated;


C = [0.01 1 100];
error = zeros(5,3);
time_taken = zeros(5,1);
%h = 1:3;

%for linear
tic
for i =1:3
    model = SVM_learner(traindata,trainlabels,C(i),'linear',0);
    ypred = SVM_classifier(testdata,model);
    error(1,i) = classification_error(ypred,testlabels);    
end
time_taken(1) =toc 

%for polynomial with degree 2
tic
for i =1:3
    model = SVM_learner(traindata,trainlabels,C(i),'poly',2);
    ypred = SVM_classifier(testdata,model);
    error(1,i) = classification_error(ypred,testlabels);    
end
time_taken(2) = toc

%for polynomial with degree 3
tic
for i =1:3
    model = SVM_learner(traindata,trainlabels,C(i),'poly',3);
    ypred = SVM_classifier(testdata,model);
    error(1,i) = classification_error(ypred,testlabels);    
end
time_taken(3) = toc

%for rbf with parameter 1
tic
for i =1:3
    model = SVM_learner(traindata,trainlabels,C(i),'rbf',1);
    ypred = SVM_classifier(testdata,model);
    error(1,i) = classification_error(ypred,testlabels);    
end
time_taken(4) = toc

%for rbf with parameter 4
tic
for i =1:3
    model = SVM_learner(traindata,trainlabels,C(i),'rbf',4);
    ypred = SVM_classifier(testdata,model);
    error(1,i) = classification_error(ypred,testlabels);    
end

time_taken(5) = toc

save('SVM_error.mat','error','time_taken');
save mydata;
end