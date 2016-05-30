clear
load max_lhood_gauss_data_subsets.mat
load max_lhood_gauss_data.mat
error = zeros(6,6);
ques = ['1a';'1b';'1c';'2a';'2b';'2c'];
for i = 1:size(subX,2)
    for j=1:size(ques);
        model = max_lhood_gauss_est_param(subX{i},subYx{i},ques(j,:));
        pred = max_lhood_gauss_classify(model,T);
        error(i,j) = multiclass_error(pred,Yt);
    end
end
save('error.mat','error');
per = [3 5 10 15 20 25] ; 
figure
hold on
plot(per,error(:,1),'r');
plot(per,error(:,2),'g');
plot(per,error(:,3),'b');
figure
hold on
plot(per,error(:,4),'r');
plot(per,error(:,5),'g');
plot(per,error(:,6),'b');
