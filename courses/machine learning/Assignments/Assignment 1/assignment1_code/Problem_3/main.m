function time_elapsed = main()%train,trainlabels,test,testlabels)
tic
%save myolddata
clear
load data_digit
error = zeros(1,10);
error_train = zeros(1,10);
i = 1;
%s =size(test);
s = size(train);
%y_pred = 1:s(1);
for l = 0.1:0.1:1;
    %for k = 1:s(1)
    y_pred = mykNNVector(train(1:ceil(l*s),:),trainlabels(1:ceil(l*s)),5,test);
    %end
    error(i) = classification_error(y_pred,testlabels);
    y_pred_train = mykNNVector(train(1:ceil(l*s),:),trainlabels(1:ceil(l*s)),5,(train(1:ceil(l*s),:)));
    error_train(i)  = classification_error(y_pred_train,trainlabels(1:ceil(l*s)));
    
    i =  i+1;
end
plot(10:10:100,error,'blue');
hold on 
plot(10:10:100,error_train,'red');
time_elapsed = toc;
end
