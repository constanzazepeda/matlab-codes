function stats = ols_stats(X,Y, cte)
%Para regresionar con constante--> cte = 1
%Para regresionar sin constante--> cte = 0
T = length(X);
if cte == 1
    X = [ones(T,1) X];
elseif cte ==0
end

[T,m] = size(X);
beta = inv(X'*X)*X'*Y;
resid = Y - X*beta;
s2 = (resid'*resid)/T;
varbeta = s2*inv(X'*X);
SE = sqrt(diag(varbeta));
tstat = beta./SE; 
pvalue = 1- tcdf(abs(tstat),T-m);
Yhat = X*beta;
Ymean  = mean(Y);
SSR = resid'*resid;
SST = (Y-Ymean)'*(Y-Ymean);
SSE = (Yhat-Ymean)'*(Yhat-Ymean);
Rsquared = 1- SSR/SST;


stats.beta = inv(X'*X)*X'*Y;
stats.SE = SE;
stats.tstat = tstat;
stats.pvalue = pvalue;
stats. varbeta = varbeta;
stats.SSR = SSR;
stats.SST = SST;
stats.SSE = SSE;
stats.Rsquared = Rsquared;
stats.resid = resid;

