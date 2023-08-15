clear 
x=-2*pi:1:2*pi;
xi=-2*pi:0.1:2*pi;
y=exp(cos(x))
plot(x,y,'*r')
hold on
z=interp1(x,y,xi,'linear')
plot(xi,z,'b-.')