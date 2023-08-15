x = [0.1 0.3 0.5 0.7 0.9 0.9];
y = [0.71 0.98 0.99 1.42 1.75 2.51];
c=polyfit(x,y,1)
d=polyval(c,x);
plot(x,y,'*r');
hold on
plot(x,d)
axis on