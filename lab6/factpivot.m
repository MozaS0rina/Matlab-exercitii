function X=factpivot(A,B) ;
A=input('Introduceti matricea patratica a coef: ');
B=input('Matricea col a termenilor liberi: ');
[N,N]=size(A);
X=zeros(N,1);C=zeros(1,N);
Y=zeros(N,1);
R=1:N;
for p=1:N-1
    [max1,j]=max(abs(A(p:N,p)));
    C=A(p,:);
    A(p,:)=A(j+p-1,:);
    A(j+p-1,:)=C;
    d=R(p);
    R(p)=R(j+p-1);
    R(j+p-1)=d;
    if A(p,p)==0
        'Matricea "A" este singulara. Nu exista solutie unica!'
    break
    end
   for k=p+1:N
       factor=A(k,p)/A(p,p);
       A(k,p)=factor;
       A(k,p+1:N)=A(k,p+1:N)-factor*A(p,p+1:N);
   end
end
Y(1)=B(R(1));
       for k=2:N
        Y(k)=B(R(k))-A(k,1:k-1)*Y(1:k-1);
        X=substitutie(A,Y);
       end
    disp('REZULTATELE SUNT : ')
    disp('MATRICEA PIVOTATA (A=LU) : ')
    A
    disp('MATRICEA COLOANA A TRANSFORMARII LY=B : ')
    Y
    disp(' MATRICEA SOLUTIILOR :')
    X
end

