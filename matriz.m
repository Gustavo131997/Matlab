function [A,b]= matriz(n)
A=zeros(n,n);
b(1)=3;
for i=1:n
    for j=1:n
        A(i,i)=223;
        if i~=n
            A(i,i+1)=4;
        end
        if i~=1
            A(i,i-1)=4;
        end
            A(i,n-(i-1))=-1;    
    end
    if(i<n)
        b(i+1)= b(i)+i;
    end
    
end
k=round(n/2);
A(k,k)=223;
b=b';
end

%Fabian Mariqueo
%Javier Torres