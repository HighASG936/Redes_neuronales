
A = 3

for I = 1 : 100
   

 data = [A 3.01 3.3 2.89 2.5 3.45 3 3 3 3 3.25 2.85 2.994 2.54 2.65 2.78  3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3]
 S = capability(data,[2.0 1.0])
 capaplot(data,[2.5, 3.5]);
 grid on

 if abs(S.mu) < 3.0 & A < 3.5 & A > 2.5 
     A = A - 0.01
     pause(0.1)    
 end
end
     disp(A)