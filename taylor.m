function [z] = taylor(x)

%Fabian Mariqueo
%Javier Torres
f = (x+1)^(1/3);
f1 = (1/3)*(x+1)^(-2/3);
f2 = (-2/9)*(x+1)^(-5/3);
f3 = (10/27)*(x+1)^(-8/3);


h =x-0;

z = f  +  (f1*h)  +  ((f2*h)/2)  +  ((f3*h)/factorial(3));

end