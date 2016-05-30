function [] = classifier(traindata,trainlabels)
s = size(traindata);
hold on
for i = 1:s(1);
    if trainlabels(i) == -1
        plot(traindata(i,1),traindata(i,2),'r*');
    else
        plot(traindata(i,1),traindata(i,2),'b*');
    end
end
end