function [A, p] = difdiv(x,y)
%x e y son los vectores de datos
%A es una matriz que contiene la tabla de diferencias divididas
%p es el polinomio de newton

n = length(x);
A = zeros(n);
A(:,1) = y;
p = zeros(1,n+1);
j=2;
%%algoritmo que crea la tabla de diferencias divididas

while j<=n
  i=1;
  while (i<=n)
      if(i>=j)
          A(i,j) = (A(i,j-1)- A(i-1,j-1))/(x(i)- x(i-j+1));
      end
      i = i+1;
  end
  j=j+1;
end

%%se genera el vector que re

i=1;
while(i<=n)
    aux=[0,1];
    k=1;
    while (k<i)
        q = [1,-x(k)];
        aux = conv(aux,q);
        k=k+1;
    end
    
    p(1, n+1-i:end) = aux*A(i,i) +p(1,n+1-i:end);
    i=i+1;
end

 t= linspace(x(1):x(n), 100);
 pol = polyval(p,t);
 
 plot(x,y,'*');
 hold on;
 plot(t,pol,'r');

end