x = [1 1; 1 -1; -1 1; -1 -1];
y = [ 1   -1    -1      -1 ];
w = [0 0];
k = 4;
j = 2;
i = 2;
b = 1;

for m = 1:k
   for n = 1:j
%  Calculando vector de ponderancia
    w(n) = w(n) + (x(m, n)* y(m));
   end 
%  Calculando nueva constante     
   b    = b + y(m); 
   n = 1;   
   display(w);
   display(b);
end