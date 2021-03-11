function [w,b, average_w, average_b] = train_perceptron(X, y)

m = length(X);
d = length(X(1,:));

w_hat = zeros(d+1,1);
average_w_hat = zeros(d+1,1);
X_hat = [X, ones(m,1)]';
for i = 1:m
    eval = y(i)*(w_hat' * X_hat(:,1));
    
    if eval <= 0
        w_hat = w_hat + y(i)*X_hat(:,1);
    end 
    
    average_w_hat = average_w_hat + w_hat;
end 

average_w_hat = average_w_hat ./ m;


w = w_hat(2:end);
b = w_hat(1);

average_w = average_w_hat(2:end);
average_b = average_w_hat(1);


end

