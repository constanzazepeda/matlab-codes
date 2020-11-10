function [k] = kurt(X)
%kurtosis
%No utiliza funciones
N = length(X);
desv2 = (X-mean(X)).^2;
var = sum(desv2)/N;
s = sqrt(var);

num = sum((X-mean(X)).^4)/N;
den = s^4;
k = num/den;
end