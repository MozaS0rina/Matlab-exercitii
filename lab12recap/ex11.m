clear all
r=[0,-2,5,1,7]
P=[-1 9 5;3 10 -5]
p=[-1,6,-3,0,-8];
poly2sym(p)

f=polyval(p,r)
g=polyval(p,P)