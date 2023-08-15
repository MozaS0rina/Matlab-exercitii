x=-1:0.2:1;
y=(sin((pi.*x)./2)).^2;
xi=-1:0.01:1;
yi=interp1(x,y,xi,'spline');
y1=interp1(x,y,xi,'linear');
plot(x,y,'*',xi,yi,'g:',xi,y1,'m-.')
grid on
legend('y','yi','y1','Location','Southwest')
