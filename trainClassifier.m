%%%%%%%%%%%%%%%%%%%%%%%%%%%
% @file trainClassifier.m
% @brief logistic_regression multiclass classifier
% @param K: number of class
% @param X: features matrix [m,n]=size(X),m is the number of instance,n is the number of features
% @param y: column vector, instances's correct class label
% eg: optTheta = trainClassifier(4,X,y);
%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [optTheta,exitFlag]= trainClassifier(K,X,y)
% train process
disp('train process start');
[m,n] = size(X);
if(size(y,1) ~= m || size(y,2) ~= 1)
	disp('dimentions not match!');
	exitFlag = 0;
	return;
end
initTheta = zeros(n,1);
optTheta = zeros(n,K);
opt = optimset('GradObj','on');

for i=1:K
	optTheta(:,i)=fminunc(@(theta) logistic_regression(theta,X,y,i),initTheta,opt);
end
exitFlag = 1;
disp('train process finished');
end