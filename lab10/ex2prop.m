x=[0.2 0.5 0.6 0.6 0.7 0.8];
y=[0.89 0.97 1.09 1.68 1.97 2.35];
c=polyfit(x,y,2)
d=polyval(c,x);
plot(x,y,'*r');
hold on
plot(x,d)
axis on
%sau
figure(2)
A=[ones(size(x')) x' (x').^2];
%solutia acestui sistem este data de urmatoarea comanda
X=A\(y')
%realizam in continuare si reprezentarea grafica
T=(0:0.1:2.5)';
Y=[ones(size(T)) T T.^2]*X;
plot(T,Y,'-',x',y','*')
grid on

