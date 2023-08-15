clear all
x=[0 0.4 0.9 1.2 1.7 2.5]
y=[0.68 0.99 1.09 1.59 1.79 2.49]
'Coeficientii estimatorului : '
c=polyfit(x,y,2)
d=polyval(c,x);
plot(x,y,'*r');
hold on
plot(x,d)
axis on