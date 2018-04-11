function [resultado] = vandermonde(x)
%x es el conjunto de variable independiente, para el caso de las bacterias, representa
%el día

longitud = length(x);
resultado = zeros(longitud);

for i = 1:longitud        
    for j=1:longitud   
       %%En el caso de que el primer valor de x sea cero, se aprobecha 
       %el echo de que matlab interpreta 0^0 = 1
        resultado(i,j) = x(i)^(j-1);
    end
end
disp(resultado);
end