function [sumFloat, multFloat] = opFloat(n1, n2, mant)
%%Datos
%n1 = numero 1
%n2  = numero2

n1 = transforma_red(n1,mant);
n2 = transforma_red(n2,mant);
%Ambos numeros estan transformados 

sumFloat = n1 + n2;
sumFloat = transforma_red(sumFloat, mant);

multFloat = n1*n2;
multFloat = transforma_red(multFloat, mant);

end