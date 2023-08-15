clear all
clear %ex1-ex5
p=[1,7,0,1]%polinoame
f = [1,2, 0.5,-6.5]
h=[1,0,0,2,0,-6*(5^(1/3))]
px=poly2sym(p)
fx=poly2sym(f)
hx=poly2sym(h)
%poly2sym() creeaza polinomul pe baza vectorului
suma=f+p
diferenta=f-p

g1 = [1 1 -2]; g2 = [1 1] ;
g=conv(g1,g2)%produsul polinoamelor
gx=poly2sym(g)

h1=[1 2 0 -2];h2=[1 1 0];
[c,r]=deconv(h1,h2)%catul si restul pol
cx=poly2sym(c)
rx=poly2sym(r)

ro=roots(f)%radacinile polinomului


