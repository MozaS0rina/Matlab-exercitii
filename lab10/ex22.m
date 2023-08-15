clear all
x=0:0.25:6;
y=2+6*x.^2-x.^3;
y=y+randn(size(x))%creeaza eroare random
xx=0:0.01:6;
p=polyfit(x,y,3);
yy=polyval(p,xx);
plot(x,y,'*',xx,yy)
axis([0 6 0 40])
xlabel('x');ylabel('y');




