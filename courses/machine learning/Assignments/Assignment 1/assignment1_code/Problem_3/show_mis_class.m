ypred = kNN(train,trainlabels,5,test);
h = ypred - testlabels;
mis_class = test(find(h~=0),:);
s =size(mis_class)
hold on
for i=1:s(1)
    im = reshape(mis_class(i,:),16,16)';
    imshow(im);
    pause(2);
end
