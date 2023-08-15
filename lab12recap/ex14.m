xi=[-2,-1,0,1,2,3,4]
yi=[1.44,1.69,1.37,1.46,1.77,2.01,1.88]

c=polyfit(x,y,1)
d=polyval(c,x);
plot(x,y,'*r');
hold on
plot(x,d)
title('grafic 1')

figure(2)%metoda2
A=[ones(size(x)) x x.^2];
 X=A\y;
 T=(-2:0.1:4)';
 Y=[ones(size(T)) T T.^2]*X;
plot(T,Y,'-',x,y,'*r')
grid on
