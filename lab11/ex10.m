clear all
x=[1 0 -5 7 -3];
y=[2 4 0 -11];
'Produsul lor: '
z=conv(x,y)
prod=poly2sym(z)
'Derivata produsului: '
derivata=polyder(z);
der=poly2sym(derivata)
'Radacinile prod:'
r=roots(z)

