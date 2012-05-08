%%%%%%%%%%%%%%%%%%%%%%%%%%%
% @file trainClassifier.m
% @brief logistic_regression multiclass classifier
% @param K: number of class
% @param tX: features matrix [m,n]=size(X),m is the number of test instance,
%           n is the number of features
% @param ty: column vector, instances's correct class label
% @param optTheta:the optimized parameter learned by trainClassifier
% eg: testClassifier(4,tX,ty,optTheta)
%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [accuracy,predict] = testClassifier(K,tX,ty,optTheta)
[m,n]=size(tX);
h=zeros(m,4);
for i=1:K
   h(:,i)=htheta(optTheta(:,i),tX); 
end

predicty=zeros(m,1);
acc_count = zeros(K,1);
for i=1:m
   predicty(i)=find(h(i,:)==max(h(i,:)));
   if(predicty(i) == ty(i))
       acc_count(ty(i)) = acc_count(ty(i))+1;
   end
end
accuracy = sum(acc_count)/m;
disp('total accuracy:');
disp(accuracy);
end