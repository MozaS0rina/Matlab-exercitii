function fi=lagr2(x,y,xi)
%lagr2 - calculeaza polinoamele de interpolare Lagrange
%folosind polinoamele de baza
%x,y - coordonatele nodurilor
%xi - punctele de evaluare
if nargin~=3
error('numar de argumente gresit')
end
z=pfl(x,xi);
fi=y*z;
end
