function [skewns] = skew(X)
%skewness
%No utiliza funciones
N = length(X);
desv3 = (X-mean(X)).^3;
num = sum(desv3)/N;
desv2 = (X-mean(X)).^2;
s  = sqrt(sum(desv2)/N);
den = s^3;
skewns = num/den;
end