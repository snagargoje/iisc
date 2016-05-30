k = [1 9 49 99 499];
error = 1:5;
for i = 1:5
    y_pred = kNN(traindata,trainlabels,k(i),testdata);
    error(i) = classification_error(y_pred,testlabels);
end
hold on
plot(k,error,'*r');
error = 1:5;
for i = 1:5
    y_pred = kNN3(traindata,trainlabels,k(i),testdata);
    error(i) = classification_error(y_pred,testlabels);
end
plot(k,error,'+b');
