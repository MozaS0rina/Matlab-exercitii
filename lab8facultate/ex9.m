x=0:0.1:10;
y=sin(x);
xi=0:0.25:10;
yi=interp1(x,y,xi);
plot(x,y,'o',xi,yi)