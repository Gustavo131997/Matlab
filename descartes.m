function [positivas, negativas, complejas] = descartes(variaciones, variacionesNeg, raices)
%variaciones debe ser la cantidad de veces que varia el signo
%variacionesNeg son las cnatidad de veces que varia el signo con f(-x)
%raices son la cantidad de raices que debe tener la funcion
positivas = [];
negativas = [];
i=1;
complejas = raices - (variaciones + variacionesNeg);
while (variaciones>0 || variacionesNeg>0)
    
   if(variaciones>=0) positivas(i) = variaciones; end
   if (variacionesNeg>=0) negativas(i) = variacionesNeg; end
   variaciones = variaciones -2;
   variacionesNeg = variacionesNeg-2;
   i=i+1;
end
end