function[xn, nIt, error] = biseccion(fun, xi, xd, tolerancia, itMax)
fun = inline(fun);
nIt=0;
error=inf;



if( fun(xi)*fun(xd)<0)
        
    while(  (fun(xi)*fun(xd) ~= 0)  |  (nIt>itMax) | error<tolerancia)
        
        xm =(xi + xd)/2;
        
        if((fun(xi)*fun(xm))<0)
            
            xd = xm;
        else
            xi = xm;
        end
        nIt = nIt +1;
        error = abs(fun(xm)-fzero(fun, 1))
    end
     xn = xm;
     error = error;
     nIt = nIt;
else if(fun(xi)*fun(xd)< 0)
        fprintf('Uno de los extremos es raiz')
        xn = null;
    else            
        fprintf('No hay informacio para los datos ingresados')
end

end
