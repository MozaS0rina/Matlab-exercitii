x=[0,0.3,0.8,1.1,1.6,2.3]';%face matrice coloana
y=[0.5,0.82,1.14,1.25,1.35,1.40]';
A=[ones(size(x)) x x.^2];
%solutia acestui sistem este data de urmatoarea comanda
X=A\y
%realizam in continuare si reprezentarea grafica
T=(0:0.1:2.5)';
Y=[ones(size(T)) T T.^2]*X;
plot(T,Y,'-',x,y,'*')
grid on



