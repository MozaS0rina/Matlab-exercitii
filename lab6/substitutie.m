function X = substitutie(A,B)

n=length(B);
X=zeros(n,1);
X(n)=B(n)/A(n,n);
for k=n-1:-1:1
    if A(k,k)~=0
        X(k)=(B(k)-A(k,k+1:n)*X(k+1:n))/A(k,k);
    else
        disp('-Atentie Impartire cu zero!')
    end
end
 X       
end

