function [ err] = multiclass_error(y_pred,y_true)
%This function computes the multiclass error between predicted lables
%y_pred and actual lables y_true. 

%y_pred - Predicted lables (m*1 vector whose each entry belongs to the set {0,1,2,3,4,5,6,7,8,9}
%y_true - True lables (m*1 vector whose each entry belongs to the set {0,1,2,3,4,5,6,7,8,9}

%Output
%err - Fraction of data instances where y_pred and y_true do not match.

len = (length(y_pred));

err = length(find(y_pred ~= y_true))/len;

end

