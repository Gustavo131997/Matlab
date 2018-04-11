function [z] = transformared(n,k)

format long

aux = abs(n);
aux2 = sign(n);
j=0;

if(aux >= 1)
   
   while (aux  >= 1) 
      aux = aux/10;
      j = j+1;
   end
   
   for i= 1:k
       aux = aux*10;
   end
   
   
   aux2 = aux- floor(aux);
   aux2 = aux2*10;
   aux2= floor(aux2);
   
   
   if (aux2 >= 5)
       aux = floor(aux)+1;
   else
       aux = floor(aux);
   end
   
   
   while(aux >= 1)
       aux = aux/10;
   end
    
else        
    
    if(aux <10*(-3))
        aux=0;
    else
        
        while(aux<1)
            aux = aux*10;
            j=j+1;
        end
        
        aux = aux/10;
        j = j+1;
        
        for( i = 1:k)
            aux = aux*10;
        end
        
        aux2 = aux- floor(aux);
        aux2 = aux2*10;
        aux2 = floor(aux2);
        
        if (aux2 >= 5)
            aux = floor(aux)+1;
        else
            aux = floor(aux);
        end
        
        
        while(aux >=1)
            aux = aux/10;
        end
        
    end
end

z = aux*10^j;
%if (aux2 >=0)
 %   z = aux*10^j;
 %   fprintf('\n\nEl número punto flotante es %10f*10^%d \n\n', aux, j)
%else
 %   fprintf('\n\nEl número punto flotante es %10f*10^%d \n\n', -aux, j)
%end
end