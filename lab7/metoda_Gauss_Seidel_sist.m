function metoda_Gauss_Seidel_sist
%Argumente de intrare
%A=matricea p?tratic? a coeficien?ilor: size(A)=n
%B=matricea coloan? a termenilor liberi: size(B)=(n,1)
%X0=matricea ini?ial?
%toler=abaterea r?d?cinilor
%iter=num?rul de itera?ii
%X=matricea coloan? a solu?iilor sistemului AX=B
%eps=eroarea de calcul implicit?: eps=2.2204e-016
A=input('Introduceti matricea patratica a coeficientilor:')
B=input('Introduceti matricea coloana a termenilor liberi:')
X0=input('Introduceti sol. init. (matrice coloana) pt. startul iterarii:')
toler=input('Introduceti abaterea fata de valoarea corecta:')
iter=input('Dati numarul maxim de iteratii:')
N=length(B);
for k=1:iter
for j=1:N
if j==1
X(1)=(B(1)-A(1,2:N)*X0(2:N))/A(1,1);
elseif j==N
X(N)=(B(N)-A(N,1:N-1)*(X(1:N-1))')/A(N,N);
else
X(j)=(B(j)-A(j,1:j-1)*X(1:j-1)'-A(j,j+1:N)*X0(j+1:N))/A(j,j);
end
end
eroarea=abs(norm(X'-X0));
eroarea_relativa=eroarea/(norm(X)+eps);
X0=X';
if (eroarea<toler)|(eroarea_relativa<toler)
break
end
end
X=X'
disp('|................................................|')
fprintf(1,'Solutia dupa --%g-- iteratii este:\n', iter)
disp('|................................................|')
X

end

