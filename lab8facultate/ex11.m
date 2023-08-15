[x,y,z,v]=flow(10);
[x1,y1,z1]=meshgrid(0.1:0.25:10,-3:0.25:3,-3:0.25:3)
v=interp3(x,y,z,v,x1,y1,z1);
slice(x1,y1,z1,v,[6 9.5],2,[-2 .2])

