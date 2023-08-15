clear all
xi=[-8,-7.25,-2.5,3.5,4.75];
x =0:0.5:10;
y=log(2.*x+1);
yy=spline(x,y,xi);
plot(x,y,'r*',xi,yy,'-')