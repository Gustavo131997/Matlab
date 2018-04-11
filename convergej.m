function []=convergej(A)
aux=true;
for i=1:length(A);
    acumulador=0;
    for j=1:length(A)
        if(i~=j)
            acumulador = acumulador + abs(A(i,j));            
        end
         
    end    
    dominante=A(i,i)-acumulador;
        
    if dominante <= 0 
        aux = false;        
    end
end

if aux
    disp('converge');
    %return;
end

D = diag(A);
L = (tril(A)- diag(D));
U = (triu(A)- diag(D));
 Tj = -inv(diag(D))*(L+U);
 
 espectral=max(abs(eig(Tj)));
 disp(espectral)
 if espectral <1
     disp('radio espectral menor a 1');
     disp('Converge');
 else
     disp('No converge');
 end
end

%%Fabian Mariqueo
%%Javier Torres