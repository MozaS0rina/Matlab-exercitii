clear all
[x,y,z,v] = flow(10);
[xi,yi,zi]=meshgrid(0.1:0.25:10,-3:0.25:3,-3:0.25:3);

vi=interp3(x,y,z,v,xi,yi,zi);%interpolare tridimensionala
slice(xi,yi,zi,vi,[6 9.5],2, [-2 .2 ])




