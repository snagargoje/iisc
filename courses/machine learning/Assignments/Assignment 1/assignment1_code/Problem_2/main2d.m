function time_elapsed = main2d()%traindata,trainlabels,testdata,testlabels)
tic
clear
load data_simulated
k = [1 9 49 99 499];
size_k = size(k);
error = zeros(size_k(1),size_k(2));
error_train = zeros(size_k(1),size_k(2));
%error = zeros(size(k));
%error_train = zeros(size(k));
for i=1:5
y_pred = mykNNVector(traindata,trainlabels,k(i),testdata);
error(i) = classification_error(y_pred,testlabels);
y_pred_train = mykNNVector(traindata,trainlabels,k(i),traindata);%(1:limit,:));
error_train(i)  = classification_error(y_pred_train,trainlabels);%(1:limit) );
end
plot(k,error,'blue');
hold on 
plot(k,error_train,'red');
time_elapsed = toc;
save('2d.mat');
end