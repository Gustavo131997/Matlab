function [A,p]=difdiv2(x,y)
%% x e y son los vectores de datos
%%A es una matriz que contienelatabla de diferencias divididas
%% p es el polinomio de Newton .

n=length(x) ;

A=zeros(n);
A(:,1) = y ;
j=2;
p=zeros(1,n+1);

%%algoritmo que crea la tabla de diferencias divididas

while j<=n
    i =1;
    while i<=n
        if i>=j
            A(i,j)=(A(i, j-1)-A(i-1,j-1))/(x(i)-x(i-j + 1));
        end
        i=i +1;
    end
        j=j +1;
end

%% se genera el vector que representa al polinomio

i =1;
while i<=n
    aux = [0,1] ;
    k=1;
    while k<i
        q=[1,-x(k)] ;
        %% conv permite multiplicar valores que representan un polinomio
        aux=conv ( aux , q ) ;
        k=k+1;
    end
    p(1 ,n+1-i:end)=aux*A(i,i )+p ( 1 , n+1-i : end ) ;
    i=i +1;
end

%para graficar el polinomio
t=linspace(x(1),x(n),100 ) ;
pol=polyval(p,t) ;
plot(x,y,'*') %% grafica los puntos
hold on
plot (t,pol,'r')


%Particion para poder graficar en todo el intervalo
t=linspace  (x(1), x(n),1000) ;

% Spline recibe la tabla de valoresx , y ( deben t ene r e l tama~no ) y devue lve
% la evaluacion de todos los polinomios en t .
p=spline (x,y,t) ;

% grafica de spline
plot(t,p ,'--' )

% grafica de los datos
hold on
plot (x,y, '*' )

%Ahora si se quiere obtener los coecientes de cada polinomio cubico se puede
% Spline recibelatabla de valores x , y ( deben tener el tama~no ) y devuelve
% l a eva lua c i on de todos l o s pol inomios en t .
P=spline(x,y);
Pol=P.coefs; % Se forma una mat r iz donde cada f i l a r epr e s ent a l o s c o e f i c i e n t e s de
% l o s pol inomios por cada tramo . Cuidado ! ! ! que l o s c o e f i c i e n t e s e s tan e s c r i t o s de
%l a forma P( i , 1 ) ( x?x i )^3+P( i , 2 ) ( x?x i )^2+P( i , 3 ) (
%x?x i )+P( i , 4 )