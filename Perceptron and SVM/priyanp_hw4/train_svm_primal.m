function [w,b] = train_svm_primal(X, y, lambda)
[m,d]=size(X);

Z1 = zeros(d,m+1);
Z2 = zeros(m+1,d);
Z3 = zeros(m+1,m+1);
LI = lambda * eye(d);
H = [LI,Z1;Z2,Z3];

f = zeros(1,d+1);
f = [f,1/m *ones(1,m)]';

A = y .* X;
A = [A,y .* ones(m,1) ,eye(m)];
A = -A;

b = -1 * ones(m,1);


lb = [-1 * inf(d+1,1);zeros(m,1)];
ub = [];
Aeq = [];
beq = [];

z = quadprog(H,f,A,b,Aeq,beq,lb,ub);

w = z(1:d);
b = z(d+1);

end