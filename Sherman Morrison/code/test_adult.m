clear all
close all

load adult_train_test

for k=1:10
    %shuffle training set
    idx=randperm(numel(ytrain));
    Xtrain=Xtrain(idx,:);
    ytrain=ytrain(idx);
    
    % train percetron (1 pass over training set)
    [w,b,average_w,average_b]=train_perceptron(Xtrain,ytrain);
    
    % test
    test_err_last_array(k)=numel(find(ytest~=sign(Xtest*w+b)))/numel(ytest);
    test_err_average_array(k)=numel(find(ytest~=sign(Xtest*average_w+average_b)))/numel(ytest);
end

test_err_last_array
test_err_average_array


hold on 
plot(test_err_last_array)
plot(test_err_average_array)
legend