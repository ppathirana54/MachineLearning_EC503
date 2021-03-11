m = 10000;
n = 11;

data = normrnd(0,1,[m,n]);

y = data(:,1);
X = data(:, 2:end);
epsilon = 10;
lambda = 10;

tic
[w_train_rls,b_train_rls] = train_rls(X,y,epsilon,lambda);
toc


tic 
[w_inc,b_inc] = incremental_train_rls(X,y,lambda,epsilon);
toc
