x = linspace(0,10,11);
y = sin(x);
xi =0:0.1:10;
%yi = interp1(x,y,xi,'linear');
 yi = interp1(x,y,xi,'spline');
hold on
plot(x,y,'o')
plot(xi,yi)



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x = [0:0.1:1];
y = [0 0.4897 0.9315 1.3353 1.7156 2.0699 2.3918 2.6840 2.9634 3.2084 3.445];
 x0 = [1,1];
 %%Ingresar la funcion con @
 [sol, resnorm, residual, exitflag, output] = lsqcurvefit(@J, x0, x,y);