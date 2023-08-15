clear all
%dreapta de regresie liniara
x=[0.1,0.4,0.5,0.7,0.7,0.9];
y=[0.61,0.92,0.99,1.52,1.47,2.03];
c=polyfit(x,y,1)
%nu punem ";" la final pentru a vedea coeficientii dreptei de regresie
d=polyval(c,x);
axis([-2,10,-50,150])
plot(x,y,'*r');
hold on
plot(x,d)
% reprezentarea grafica se poate face si cu o singura comanda: plot(x,d,x,y,í*rí)