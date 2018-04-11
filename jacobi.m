function [X] = jacobi(A, b, x0, tol, iteraciones)
%Tj = -D^-1(L+U)
%        inv(D)
%Cj = inv(D)*b
% con la norma se calcula el error
% norm(matriz, algo); algo = 1 || 2 || inf;
% x = A\b

D = diag(A);
L = (tril(A)- diag(D));
disp(L);
U = (triu(A)- diag(D));

disp(U);
 Tj = -inv(diag(D))*(L+U); 
 
 Cj = inv(diag(D))*b'; 
 k = 0;
  error = inf;
  xbarra = x0';
  xn = xbarra;
  while(k < iteraciones && error>tol)
      X = Tj*xn + Cj;
      error = norm((X - xn),2);
      xn = X;
%      for i = 1:size(A)[1]
%          X[i] = 
%     end
    disp(error);
      k=k+1;

  end
 disp(X);
end