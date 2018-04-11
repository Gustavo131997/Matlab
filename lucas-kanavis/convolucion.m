function [c]=convolucion(matriz,mascara)
    
    [ancho,largo] = size(matriz);
    [anchoM,largoM] = size(mascara);
    
    c = zeros(anchoM, largoM);
    
    for x = 1:anchoM
        
        for y = 1:largoM
            
            for i = 1:anchoM
                
                for j = 1:largoM
                    
                    py = y + j - floor(largoM/2);
                    px = x + i - floor(anchoM/2);
                    
                    if ( py >= 1 && py >= 1 && py <= largo && px <= ancho )
                        
                        c(y, x) = c(y, x) + matriz(py, px) * mascara(i, j);
                        
                    end
                    
                end
                
            end
            
        end
        
    end
    
end