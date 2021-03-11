clear all
close all

load cadata_train_test

for k=2:10
    [Xtrain_poly]=generate_poly_features(Xtrain_norm,k);
    [Xtest_poly]=generate_poly_features(Xtest_norm,k);
    
    [w,b,train_err,loo_err]=train_rls_loo(Xtrain_poly,ytrain,1e-3,1e-5);
    train_err_array(k)=train_err;
    loo_err_array(k)=loo_err;
    test_err_array(k)=mean((ytest-Xtest_poly*w-b).^2);
end

plot(train_err_array,'r')
hold on
plot(loo_err_array,'b')
plot(test_err_array,'k')
xlabel('k')
ylabel('Errors')
legend('Training error', 'LOOCV error', 'Testing error')