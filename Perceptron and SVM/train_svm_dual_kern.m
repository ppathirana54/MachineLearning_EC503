function [w,b] = train_svm_dual_kern(X, y, lambda,kernal)

[m,d]=size(X);


H = zeros(m);

for i = 1:m
    for j = 1:m

    H(i,j) = (1/(4*lambda)) *y(i)*y(j)*kernal;
    
    end 
end




f = ones(m,1);
A = [];
b = [];
Aeq = y';
beq = 0;
lb = zeros(m,1);
ub = 1/m * ones(m,1);

alpha = quadprog(-H,-f,A,b,Aeq,beq,lb,ub);

w = sum(1/(2*lambda)*alpha .* y .* X)';
idx=find(alpha>0.00001 & alpha<1/m-0.00001);
b=mean(y(idx)-X(idx,:)*w);
end
