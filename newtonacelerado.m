function [error, xAfter, n] = newtonacelerado(fun, funDerivada, x0, tol, nmax, m)
%x0 es el punto incial
%tol es la tolerancia
%nmax es el numero maximo de iteraciones
fun = inline(fun);
funDerivada = inline(funDerivada);

n=0;
xBefore = x0;

error = inf;

while(n<nmax && error>tol)
    xAfter = xBefore - m*fun(xBefore)/funDerivada(xBefore);
    n=n+1;
    error = abs(xAfter-xBefore);    
    xBefore = xAfter;    
end

if(error>tol) disp('No converge')


end