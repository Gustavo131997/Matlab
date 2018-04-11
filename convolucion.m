function [mat]=convolucion(matriz, convol)
 
    % Obtener tamaño de matriz
    [alto, ancho]   = size(matriz);
    % Crear matriz resultado de convolución
    mat             = zeros(alto - 1, ancho - 1);
   
    % Para cada i desde 1 a ancho - 1
    for i = 1 : ancho - 1
        % Para cada j desde 1 a alto - 1
        for j = 1 : alto - 1
            % Para cada a desde 1 a 2
            for a = 1:2
                % Para cada b desde 1 a 2
                for b = 1:2
                    % Multiplicar valores al rededor por valor de la
                    % convolución
                    mat(j, i) = mat(j, i) + convol(a, b) * matriz(j - a + 2, i - b + 2);
                end
            end
        end
    end
end