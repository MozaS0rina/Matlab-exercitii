clear all
[X,Y]=meshgrid(-3:0.25:3);
Z=peaks(X, Y) ;
[XI,YI]=meshgrid(-3:0.125:3);
ZI = interp2(X,Y,Z,XI,YI);%interpolare bidimensionala
mesh(X,Y,Z), hold,
mesh(XI,YI,ZI+15) 
hold off
axis([-3 3 -3 3 -5 25])
%interpolarea pe o retea [x,y]