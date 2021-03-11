function [X_poly] = generate_poly_features(X,k)

[m,d] = size(X);

X_poly = zeros(m,d*k);


for i = 0:k-1
    for j = 1:d
    
        X_poly(:,d*i + j) = X(:,j) .^ 1/(i+1);
    
    end 
end 




end
