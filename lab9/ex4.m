clear all
x=-10:0.5:10;
y=(log(abs(x+12))+2)./(exp(x)+12);
xi=[-10 -9.75 -4.25 0.1 4.15 6.35];
yi1=interp1(x,y,xi,'linear');
yi2=interp1(x,y,xi,'spline');
yi3=interp1(x,y,xi,'pchip');
plot(x,y,'r-',xi,yi1,'m:o',xi,yi2,'k--s',xi,yi3,'b-.+')