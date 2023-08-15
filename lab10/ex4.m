load testdata
xx=0:0.05:5;
p=polyfit(xs,us,3);
yy=polyval(p,xx);
plot(xs,us,'*',xx,yy,'m')
grid on
hold on
axis([0 5 -2 2])
p=polyfit(xs,us,5);
yy=polyval(p,xx);
plot(xx,yy,'g')
xlabel('x');ylabel('y')
hold off