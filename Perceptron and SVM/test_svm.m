clear all
close all

load adult_train_test

%shuffle training set
idx=randperm(numel(ytrain));
Xtrain=Xtrain(idx,:);
ytrain=ytrain(idx);

% take a small subset of the training set, otherwise it is too slow
n=1000;
Xtrain=Xtrain(1:n,:);
ytrain=ytrain(1:n);

lambda=0.01;

[w_primal,b_primal]=train_svm_primal(Xtrain,ytrain,lambda);
[w_dual,b_dual]=train_svm_dual(Xtrain,ytrain,lambda);
    
% How did we do?
plot(w_primal)
hold on
plot(w_dual,'r')

% Test error
numel(find(ytest~=sign(Xtest*w_primal+b_primal)))/numel(ytest)

