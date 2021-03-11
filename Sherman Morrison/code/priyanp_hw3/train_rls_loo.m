function [w,b,train_err,loo_err] = train_rls_loo(X,y,lambda,epsilon)
[m,d]=size(X);
Xtilde=[ones(m,1) X];


inverseC=[1/epsilon zeros(1,d); zeros(d,1) eye(d)/lambda];
loo_err_vec = zeros(1,m);
train_err_vec = zeros(1,m);
for i=1:m

    q=inverseC*Xtilde(i,:)';
    inverseC = inverseC - q*q'/(1+Xtilde(i,:)*q);

    
    wtilde=inverseC*Xtilde'*y;

    loo_err_vec(i) = 1/(m-1) * (wtilde'*Xtilde(i,:)' - y(i)/1-Xtilde(i,:)*inverseC*Xtilde(i,:)')^2;
    train_err_vec(i) =  (y(i) - wtilde'*Xtilde(i,:)')^2;
end

train_err = mean(train_err_vec);
loo_err = mean(loo_err_vec);
b=wtilde(1);
w=wtilde(2:end);

end
