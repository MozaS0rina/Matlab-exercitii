clear all
x=-2*pi:0.25:2*pi;
y=exp(cos(x));
xi=-2*pi:0.1:2*pi;
z1=interp1(x,y,xi,'spline');
z2=interp1(x,y,xi,'linear');
z3=interp1(x,y,xi,'pship');
plot(x,y,'r*',xi,z1,'b',xi,z2,'m',xi,z3,'y')