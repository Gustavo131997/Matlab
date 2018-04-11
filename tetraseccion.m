function [error, sol, n] = tetraseccion(funcion, a, b, nmax, tol)
fun = inline(funcion);
n=0;
error = inf;
if(fun(a)*fun(b)<0)
    while(n<nmax && error>tol)
        
        medio = (a+b)/2;
        if(fun(a)*fun(medio) < 0)
            b=medio;
            medio = (a+b)/2;
            if(fun(a)*fun(medio) < 0)
                b=medio;
            elseif(fun(medio)*fun(b)<0)                
                a = medio;
            end
            
        elseif(fun(medio)*fun(b)<0)
            a=medio;
            medio = (a+b)/2;
            if(fun(a)*fun(medio) < 0)
                b=medio;
            elseif(fun(medio)*fun(b)<0)                
                a = medio;
            end
        end
        
        n=n+1;
        error=abs(fun(medio));
        
    end
    
else
    fprintf('No hay ceros en el intervalo');
end
sol = medio;
end