clear all
p=[3 1 2 0 -1]; %ex10-12
c=polyder(p)%calculeaza derivata polinomului
cx=poly2sym(c)
b=[1 -1];
d=polyder(p,b)%calc derivata prod p*c
dx=poly2sym(d)

[M,N]=polyder(p,b)%calc impartirea polinoamelor cu cat si rest
mx=poly2sym(M)
nx=poly2sym(N)