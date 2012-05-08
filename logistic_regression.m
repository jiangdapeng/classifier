function [jVal,gradient] = logistic_regression(theta,X,y,k)
% theta:the parameter to optimize
% X:the training instance features
% y:training instance class label
% k:the k-th htheta(multiclass classification)
% one vs the rest
[m,n]=size(X); % m is the number of instance,n is the dimention of features
tmpy = y;
idx= tmpy ~=k;
tmpy(idx)=0;
idx= tmpy ==k;
tmpy(idx)=1;
jVal = sum(tmpy .* log(htheta(theta,X))+(1-tmpy).*log(1-htheta(theta,X))) *(-1/m);
gra=sum(repmat((htheta(theta,X)-tmpy),1,n) .* X);
gradient = gra';
end