function []= curvasdenivel2(x,y,z)
n=length(x);
    for k=1:n
        Px(k,:)=lagrange(x,z(k,:));
        Py(k,:)=lagrange(y,z(k,:));
        
        hold on
        xc=linspace(x(1),x(n),50);
        yc = linspace(y(1),y(n),50);
        
        r=length(xc);
        r2 = length(yc);
        
        yg=y(k)*ones(1,r);
        xg = x(k)*ones(1,r2);
        plot3(xc,yg,polyval(Px(k,:),xc), 'b');
        plot3(xg,yc,polyval(Py(k,:), yc), 'r');
    end
end
%%Javier Torres
%%Fabian Mariqueo