 p = [3 1 2 0 -1]; 
 q=[1 2 3 4 0];
 Q=[1 2;3 4];
 R=[1 2 3;3 4 5];
 f1=polyval(p,q)%Evaluare polinom p dupa vectorul q
 %polyval() determina val polinomului in punctele lui q
 
 f2=polyval(p,Q)
 f3=polyval(p,R)