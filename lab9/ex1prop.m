clear all
x = 0:10;
y = cos(x).*sin(x);
xx = 0:0.1:7.5;
yy=interp1(x,y,xx,'spline');
grid on
plot(x,y,'*',xx,yy,'-r')