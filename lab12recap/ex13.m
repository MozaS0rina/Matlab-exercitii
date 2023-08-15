x = -2 : 6;
y = [-3, 4, 5, -2, 7, 0, 3, -1, 8]
xi=-2:0.1:6;
z=interp1(x,y,xi,'spline')
plot(x,y,'ro',xi,z,'-.');
title('Graficul functiei spline')
xlabel('axa x'),ylabel('axa y')