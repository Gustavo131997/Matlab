function [z]=funcionf(x)
%Fabian Mariqueo
%Javier Torres
aux = x+1;
if (x ~= 0)
    z = (1-funciong(aux))/x;
else
    z = -1/3;
end

end