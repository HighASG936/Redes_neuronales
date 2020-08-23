x = [      %Entradas de entrenamiento
    -1 -1;
    -1  1;
     1 -1;
     1  1; 
     ];

 y = [     %Salida de entrenamiento
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


%%%% Algoritmo de entrenamineto del perceptron %%%%
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%% Algoritmo de implementacion del perceptron %%%%

 %Generando datos aleatorios 
r = round( -1 + (1+1)*rand(20,3) );

[o,p] = size(r); % o: numero de filas  
                 % p: numero de columnas 
                 
%Ajuste para mostrar la entrada y la salida en la misma tabla
p = p-1;

for i = 1:o
 %Calcular entrada ponderada 
 for j = 1:p
 
 %Ajuste para datos con valores 0 en los dataos generados aleatoriamente
 if r(i,j) == 0   
  r(i,j) = -1;   
 end
     
     
    I = I + ( w(j) * r(i,j) ); 
 end

  %Calcular la respuesta
 if I >= theta
  r(i,3) = 1;  
  row =   num2str(i); 
  text = strcat('patron reconocido en: ', row );   
  fprintf(text);
  fprintf('\n');
 elseif I < theta
  r(i,3) = -1;   
 end
  I = 0;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
