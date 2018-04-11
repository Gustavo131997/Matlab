function [x] = sucecion(n)
    
    x=[];
    x(1) = 1;
    
    for i=2:n
        x(i) = x(i-1)/2 + 1/x(i-1);
        
        if(abs(x(i)-sqrt(2))<10^(-5))%Error de que wa (tolerancia)
            break;
        end
    end

    
end