x = [      %Entradas
    -1 -1;
    -1  1;
     1 -1;
     1  1; 
     ];

 y = [     %Salida
       -1  
       -1
       -1
        1
 ];
[l,m] = size(x); % l: numero de filas  
                 % n: numero de columnas 
w = [0 0];       %Vector de ponderaciones
I = 0;           %Entrada ponderada
theta  = 1;
beta   = 1;
answer = 0;


%%%% Algoritmo de entrenamineto del perceptron
for i = 1:l
 
 %Calcular entrada ponderada   
 for j = 1:m
    I = I + ( w(j) * x(i,j) ); 
 end
 
 %Calcular la respuesta
 if I >= theta
  answer = 1;   
 elseif I < theta
  answer = -1;      
 end
 
 %Calcular beta
 if y(i) == answer
  beta =  1;   
 else
  beta = -1;    
 end
 
 %calcular nuevo vector ponderaciones
  for j = 1:m
    w(j) = w(j) + (beta * answer * x(i, j));
 end
 
 I = 0;
end

