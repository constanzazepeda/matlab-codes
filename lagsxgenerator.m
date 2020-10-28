function [Y, X] = lagsxgenerator(W,p,cte)
%Y: Vector Y reducido en p obs. 
%X: Matriz de rezagos
%Para incluir constante en Y2--> cte = 1
%Para NO incluir constante en Y2--> cte = 0
%Asume datos ordenados del m?s antiguo al m?s reciente. 
T=length(W);
Y=W(p+1:T,1);
X = ones((T-p),p);  
for j= 1:(T-p)
for i = 1:p
    if cte ==1
        X(j,i+1)= W(j+(p-i),1) ;
    elseif cte==0
        X(j,i)= W(j+(p-i),1) ;
    end
end
end