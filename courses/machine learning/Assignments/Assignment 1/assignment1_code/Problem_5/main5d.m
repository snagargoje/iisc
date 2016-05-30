function[error] = main5d()
clear
load data_digit
C = [0.01 0.1 1 10 100];
sigma = [1 5];
error = zeros(5,2);
%model = zeros(5,2);
for i = 1:5
    for j = 1:2
        model(i,j) = SVM_learner(train,trainlabels,C(i),'rbf',sigma(j));
        ypred = SVM_classifier(test,model(i,j));
        error(i,j) = classification_error(ypred,testlabels);
        save my5data.mat
    end
end
save('5d.mat');
h1 = figure
plot(C,error(:,1));

h2 = figure
plot(C,error(:,2));
end