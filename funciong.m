function [z] = funciong (x)
%Fabian Mariqueo
%Javier Torres
if x >= 0
  z= x^(1/3);
else
    z = - abs(x^(1/3));
end
end