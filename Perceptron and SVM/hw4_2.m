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
