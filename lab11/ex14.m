xi=[-2,-1,0,1,2,3,4]
yi=[1.44,1.69,1.37,1.46,1.77,2.01,1.88]
z=-2:0.1:4
c=polyfit(xi,yi,1)
d=polyval(c,z)
plot(xi,yi,'*r');
hold on
plot(z,d)
title('grafic 1')
figure(2)%metoda2
A=[ones(size(xi)) xi];
 X=A\yi;
 T=(-2:0.1:4)';
 Y=[ones(size(T)) T]*X;
plot(T,Y,'-',xi,yi,'*r')
grid on