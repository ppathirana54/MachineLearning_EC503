load("arrhythmia.mat");

y = cast(Y,'like',X);
for i = 1:size(y)
    if y(i) == 0
        y(i) = -1;
    end
end

[m,d] = size(X);
checkNaN = isnan(X);

med = median(X, 'omitnan');

for i = 1:m
    for j = 1:d
        
        if checkNaN(i,j) == 1
            
            X(i,j) = med(j);
            
        end 
    end
end



cv = cvpartition(size(X,1),'HoldOut',0.2);
idx = cv.test;
XTrain = X(~idx,:);
XTest  = X(idx,:);
yTrain = y(~idx,:);
yTest = y(idx,:);




 c = cvpartition(yTrain,'k',3);
 
 linearSVMModel = fitcsvm(XTrain, yTrain,'KernelFunction','Linear','OptimizeHyperparameters','auto','HyperparameterOptimizationOptions', struct('Kfold',3));
 PolySVMModel3 = fitcsvm(XTrain, yTrain,'KernelFunction','polynomial','PolynomialOrder',3,'OptimizeHyperparameters','auto','HyperparameterOptimizationOptions', struct('Kfold',3));
 PolySVMModel2 = fitcsvm(XTrain, yTrain,'KernelFunction','polynomial','PolynomialOrder',2,'OptimizeHyperparameters','auto','HyperparameterOptimizationOptions',struct('Kfold',3));
 PolySVMModel1 = fitcsvm(XTrain, yTrain,'KernelFunction','polynomial','PolynomialOrder',1,'OptimizeHyperparameters','auto','HyperparameterOptimizationOptions',struct('Kfold',3));
 gaussSVMModel = fitcsvm(XTrain, yTrain,'KernelFunction','gaussian','OptimizeHyperparameters','auto','HyperparameterOptimizationOptions', struct('Kfold',3));
 
 
 linAcc = sum((predict(linearSVMModel,XTest) == yTest))/length(yTest)*100;
 poly3Acc = sum((predict(PolySVMModel3,XTest) == yTest))/length(yTest)*100;
 poly2Acc = sum((predict(PolySVMModel2,XTest) == yTest))/length(yTest)*100;
 poly1Acc = sum((predict(PolySVMModel1,XTest) == yTest))/length(yTest)*100;
 gaussAcc = sum((predict(gaussSVMModel,XTest) == yTest))/length(yTest)*100;





