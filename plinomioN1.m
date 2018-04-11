function [resp] = plinomioN1(num1, k)
x = transformared(num1, k);

aux = transformared((x^3), k);


aux = aux - transformared((5* transformared(x^2, k)), k);

aux = aux + transformared((6*x), k);

aux = aux + transformared(0.55, k);

resp = aux;
end