x=0:0.25:4;
y=x.*exp(2.*x);
xx=0:0.02:4;
p2=polyfit(x,y,2)
y2=polyval(p2,xx);
plot(x,y,'^',xx,y2,'r')
axis on
hold on
p3=polyfit(x,y,3)
y3=polyval(p3,xx);
grid on
plot(xx,y3,'g')

