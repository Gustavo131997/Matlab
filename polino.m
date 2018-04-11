function [] = polino(num, num2)
matriz = matrizZ();
vector = [1 2 3 4 5 7 8 9 10 11 12];
year = [1 3 4 6 8 9 10 12 13 14 16];

for i = 1:11
    r = lagrange(vector,matriz(i,:));
    %disp(polyval(r,num));
    %r = interp1(matriz(i,:), vector,  'spline');
    monthYear(i) = polyval(r,num);
end

for i = 1:11
    r = lagrange(year, matriz(:,i));
    yearMonth(i) = polyval(r,num2);
end
end