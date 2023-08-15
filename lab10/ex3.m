clear all
x=0:0.25:4;
y=exp(x);
xx=0:0.01:4;
p2=polyfit(x,y,2);
yy=polyval(p2,xx);
plot(x,y,'^',xx,yy,'r')
axis([0 4 0 60])
hold on
p3=polyfit(x,y,3);
yy=polyval(p3,xx);
plot(x,y,'^',xx,yy,'g')
xlabel('x');ylabel('y')
hold off
