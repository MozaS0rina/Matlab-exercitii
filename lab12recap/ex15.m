xi=[1.5,3,4.5,10,15,25]
yi=[0.55,5.78,17.57,35.41,67.56,95.38]

c=polyfit(xi,yi,2)
d=polyval(c,x);
plot(x,y,'*r');
hold on
plot(x,d)
title('grafic 1')
x=[1.5,3,4.5,10,15,25]
y=[0.55,5.78,17.57,35.41,67.56,95.38]
A=[ones(size(x)) x x.^2];
%solutia acestui sistem este data de urmatoarea comanda
X=A\y
%realizam in continuare si reprezentarea grafica
T=(0:0.1:2.5)';
Y=[ones(size(T)) T T.^2]*X;
plot(T,Y,'-')
grid on
