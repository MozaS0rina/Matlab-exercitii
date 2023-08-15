clear all
x=-4:0.1:4;
y=-4:0.1:4;
f= 'sin(x.^2+x.*y-x.*y+2)+cos(x.^2-3*y.^2+2*x.*y-1)';
ezcontour(f,[-4,4])
%axis([-5 5 -5 5]);
title('Graficul functiei f')
xlabel('axa x'),ylabel('axa y')
