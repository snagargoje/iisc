tic
clear
load data_simulated
k = [1 49 499];
%size_k = size(k);
%size_t = size(testdata);
%error = zeros(size_k(2),size_t(2));
y_pred =zeros(1,size(testdata,1));

for i=1:3
    
    for j = 1:size(testdata,1)
    y_pred(j) = mykNNVector(traindata,trainlabels,k(i),testdata(j,:));
    %y_pred = knnclassify(testdata,traindata,trainlabels,k(i));
    %error(i,:) = classification_error(y_pred,testlabels);
    %y_pred_train = kNN(traindata,trainlabels,k(i),traindata);%(1:limit,:));
    %error_train(i)  = classification_error(y_pred_train,trainlabels);%(1:limit) );
    end
    [h1(i)  h2(i)] = decision_boundary_NN(testdata,y_pred,k(i));
toc
save('figures.mat','h1','h2');
end
%plot(1:5,error,'blue');
%hold on 
%plot(1:5,error_train,'red');