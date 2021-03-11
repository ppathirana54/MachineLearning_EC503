function [w,b] = train_rls(X,y,lambda,epsilon)

m = length(X);

Q = zeros(size(X'*X));
Q(1,1) = epsilon;
Q(2:end,2:end) = lambda * eye(size(Q(2:end,2:end)));

C = X'*X + Q;




try
    w_hat = C^-1 * X' * y;
catch 
    warning("C is not invertible");
    V = orth(C);
    D = diag(C);
    Dp = zeros(size(D));
    
    for i = 1:length(D)
        if D(i) == 0
            Dp(i) = 0;
        else
            Dp(i) = 1/D(i);
        end
    end
    
    w_hat = V * Dp * V' * X' * y;
    
   
end

 b = w_hat(1);
 w = w_hat(2:end);

