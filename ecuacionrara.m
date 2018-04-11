function[A b] = ecuacionrara(n)
x0=-3;
xn=4;

A(1,1) = 3;
A(1,2) = -6;
A(1,3) = 2;
b(1) = 1;

A(n,n-2) = 3*(n-1);
A(n, n-1) = -6*(n-1);
A(n,n) = 2*(n-1);
b(n) = 2*(n-1) -1;
for k = 2:(n-1)
    A(k,k) = 3*(k);
    A(k, k+1) = -6*(k);
    A(k,k+2) = 2*(k);
    b(k) = 2*(k) -1;
end


end