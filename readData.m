%
% read train data or test data from file
%
function [X,y] = readData(X_file,y_file)
% X :matrix of feature vectors,each line is an instance's feature vectors
% y :the class label
X=load(X_file);
y=load(y_file);
end