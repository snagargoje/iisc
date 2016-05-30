function[pred] = mykNNVector(traindata,trainlabels,k,testdata)
    pred = zeros(size(testdata,1),1);
    for i=1:size(testdata,1)
        pred(i) = mykNN(traindata,trainlabels,k,testdata(i,:));
    end
end