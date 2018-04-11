function [Q R] = factqr2(A)

u(:,1) = A(:,1);

ubarra(1) = norm(u(:,1), 2);

u(:,2) = A(:,2) - ( (A(:,2)'*u(:,1))/(u(:,1)'*u(:,1)) )* u(:,1);

ubarra(2) = norm(u(:,2), 2);

Q = [u(:,1)/ubarra(1) u(:,2)/ubarra(2)];

R = Q'*A;

end