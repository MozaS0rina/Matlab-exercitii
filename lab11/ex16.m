[x,y] = meshgrid(-1:0.18:1)
z=(1/(2*pi)).*exp(-1/2.*(x.^2+y.^2))
[xi,yi]=meshgrid(-1:0.09:1)
zi=interp2(x,y,z,xi,yi)
mesh(x,y,z),hold
mesh(xi,yi,zi+2)
axis on
grid on

