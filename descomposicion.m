function [x] = descomposicion(A,b)

%Normalizar sistema
AA = A'*A;
bb = A'*b;

%Calcular matriz QR
[Q R] = factqr2(AA);


bbb = Q'*bb;
n = length(bbb);
x = zeros(n,1);

%... x = Q*R\b
x = R\bbb;

end