function metoda_jacobi_sist
    A=input('Introduceti matricea patratica a coeficientilor:')
    B=input('Introduceti matricea coloana a termenilor liberi:')
    X0=input('Introduceti sol. init. (matrice coloana) pt. startul iterarii:')
    toler=input('Introduceti abaterea fata de valoarea corecta:')
    iter=input('Dati numarul maxim de iteratii:')
    N=length(B);
    for k=1:iter
    for j=1:N
    X(j)=(B(j)-A(j,[1:j-1,j+1:N])*X0([1:j-1,j+1:N]))/A(j,j)
    end
    eroarea=abs(norm(X'-X0));
    eroarea_relativa=eroarea/(norm(X)+eps);
    X0=X';
    if (eroarea<toler)|(eroarea_relativa<toler)
    break
    end
    end
    disp('|..................................|')
    fprintf(1,'Solutia dupa --%g-- iteratii este:\n', iter)
    disp('|..................................|')
    X=X'
end

