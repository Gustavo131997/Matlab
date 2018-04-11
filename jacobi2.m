function [X,niter,error] = jacobi2(A, b, x0, tol, iteraciones)
D = diag(A);
L = (tril(A)- diag(D));
U = (triu(A)- diag(D));
Tj = -inv(diag(D))*(L+U);
 
Cj = inv(diag(D))*b';
 
 niter = 0;
  error = inf;
  xbarra = x0';
  xn = xbarra;
  while(niter < iteraciones && error>tol)
      X = Tj*xn + Cj;
      error = norm((X - xn),2);
      xn = X;
      niter=niter+1;
  end
  
  if(niter>=iteraciones && error>tol)
      disp('No converge');
  end
end

%Fabian Mariqueo
%Javier Torres