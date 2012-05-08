function value=htheta(theta,X)
% theta:a column vector
% X: matrix, each line is an instance's feature vector
% value: a column vector
value = 1 ./(1+ exp(-(X * theta)));
end