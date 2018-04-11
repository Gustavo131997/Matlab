function [Z]= matrizasociada(vector)
x=vector;
y=vector;
n=length(vector);
Z=[];
for i=1:n
    for j=1:n
        Z(i,j)=sin(x(i))*sin(y(j));
    end
end
end

%%Javier Torres
%%Fabian Mariqueo