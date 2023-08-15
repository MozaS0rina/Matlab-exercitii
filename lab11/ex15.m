xi=[1.5,3,4.5,10,15,25];
yi=[0.55,5.78,17.57,35.41,67.56,95.38];
z=1.5:0.1:25;
c=polyfit(xi,yi,2);
d=polyval(c,z);
plot(xi,yi,'*r');
hold on
grid on
plot(z,d)

%solutia2
figure(2)
x=[1.5,3,4.5,10,15,25]';
y=[0.55,5.78,17.57,35.41,67.56,95.38]';
A=[ones(size(x)) x x.^2];
%solutia acestui sistem este data de urmatoarea comanda
X=A\y
%realizam in continuare si reprezentarea grafica
T=(1.5:0.1:25)';
Y=[ones(size(T)) T T.^2]*X;
plot(T,Y,'-',x,y,'*r')
grid on