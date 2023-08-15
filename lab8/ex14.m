clear all
x=0:10;
y=sin(x);
xi=0:0.25:10;
yi=interp1(x,y,xi);%interpolarea varianta A cu pas unitar
plot(x,y,'o',xi,yi)
%yi = interpl(x,Y,xi,metoda)
figure(2)
x2=0:0.1:10;
y2=sin(x2);
xi2=0:0.25:10;
yi2=interp1(x2,y2,xi2);%interpolarea varianta B cu pas 0.1
plot(x2,y2,'o',xi2,yi2)