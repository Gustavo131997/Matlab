function [x] = gaussseidel(A, b, x0, tol, iteraciones)
%z = eig(A)
%Compobar una matriz definida positiva (devuelve los valores propios, estos deben ser todos positivos)
D = diag(A);
L = tril(A) - diag(D);
U = triu(A) - diag(D);

Tgs = -inv((diag(D)+L))*U;
Cgs = inv((diag(D)+L))*b';

error = inf;
xn = x0';
n = 0;

while (n<iteraciones && error>tol)
    x = Tgs*xn + Cgs;
    error = norm((x-xn),2);
    disp(error);
    xn = x;
    n = n+1;    
end
disp(x);
end