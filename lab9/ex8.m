clear all
x=0:4;
y=[2 1 0 3 4];
xx=0:0.1:4;
yy=spline(x,y,xx);
plot(x,y,'*',xx,yy)
plot(x,y,'*',xx,yy)
axis([0 4 -1 6])
xlabel('x');ylabel('y');
title('Interpolare spline')
grid on