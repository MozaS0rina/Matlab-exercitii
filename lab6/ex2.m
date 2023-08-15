clear
A=[2 4 -6;1 5 3; 1 3 2]%matrice patratica coef
B=[-4;10;5]%matricea col a term liberi
[LU]=lu(A)
[L,U]=lu(A)
[L,U,P]=lu(A)
%U triunghiular inf si L triunghiular sup
X=U\(L\B)
