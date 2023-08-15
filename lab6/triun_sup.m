function X=triun_sup(A,B)
A=input('Introduceti matricea patratica a coef: ');
B=input('Matricea col a termenilor liberi: ');

[N,N]=size(A);
X=zeros(N,1);C=zeros(1,N+1);
A_ext=[A,B];
for p=1:N-1
    [Y,j]=max(abs(A_ext(p:N,p)));
    C=A_ext(p,:);
    A_ext(p,:)=A_ext(j+p-1,:);
    A_ext(j+p-1,:)=C;
    if A_ext(p,p)==0
        'Mastricea A singulara.Nu are sol unica'
        break
    end
    
    for k=p+1:N
        m=A_ext(k,p)/A_ext(p,p);
        A_ext(k,p:N+1 )=A_ext(k,p:N+1)- m*A_ext(p,p:N+1);
    end
end


'MATRICEA SUPERIOR TRIUNGHIULARA EXTINSA ESTE: '
A_ext
'MATRICEA SUPERIOR TRIUNGHIULARA ESTE: '
A=A_ext(1:N,1:N)
'MATRICEA COEFICIENTILOR ESTE: '
B=A_ext(1:N,N+1)
'SOLUTIA SISTEMULUI ESTE '
X=substitutie(A_ext(1:N,1:N),A_ext(1:N,N+1));
end

