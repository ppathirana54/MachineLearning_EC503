function [w,b]=incremental_train_rls(X,y,lambda,epsilon)


m = length(X);



Q = zeros(size(X'*X));
Q(1,1) = epsilon;
Q(2:end,2:end) = lambda * eye(size(Q(2:end,2:end)));
Cinv = inv(Q);
for i = 1:m
    
    Cinv = Cinv - (Cinv*X(i,:)'*X(i,:)*Cinv)/(1+X(i,:)*Cinv*X(i,:)');
end

    w_hat =  Cinv * X' * y;
    
     b = w_hat(1);
     w = w_hat(2:end);

end 