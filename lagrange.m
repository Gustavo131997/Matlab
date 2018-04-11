function [P]=lagrange(x,y)
n=length(x);
P=0;
for i=1:n
    div = 1;
    m=1;
    for j=1:n
        if i~=j
            div = div*(x(i) - x(j));
            b(m) = x(j);
            m = m+1;
        end 
    end
    L(i,:) = poly(b)/div;
    P = P+y(i)*L(i,:);
    
end
end

%%Javier Torres
%%Fabian Mariqueo