function [y]=taylorsym(f, orden, x0)

    syms x;
    
    fx = inline(f);
    y = fx(x0);
    
    for i = 1:orden
        
        f = diff(f);
        fx = inline(f);
        
        y = y + ( fx(x0) * ( (x - x0)^ i ) / factorial(i) );
        
    end
    
end