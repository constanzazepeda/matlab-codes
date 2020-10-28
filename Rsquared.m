function [R2] = Rsquared(Y, X, cte)
%Para regresionar con constante--> cte = 1
%Para regresionar sin constante--> cte = 0
T = length(X);
if cte == 1
    X = [ones(T,1) X];
elseif cte ==0
end

beta = inv(X'*X)*X'*Y;
resid = Y - X*beta;

Yhat = X*beta;
Ymean  = mean(Y);
SSR = resid'*resid;
SST = (Y-Ymean)'*(Y-Ymean);
SSE = (Yhat-Ymean)'*(Yhat-Ymean);
R2 = 1- SSR/SST; %Notacion prof. Chumacero.
end
