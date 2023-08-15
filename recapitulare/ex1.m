i=0;
for i=1:8
    x(i)=i;
end
%sau x=1:8
%vector y
%y(1)=x(1);
%for j=2:7
  %  y(i)=x(i-1)-x(i+1);end
%y(8)=x(8);
x1=1:8;
y=diff(x);
y1=diff(x);
disp(y(2))
disp(y(3))
disp(y(5))
%$clear(y(6))
disp(x)
disp(y)
disp(x1)
disp(y1)
z=size(y1);
y1=y1(1:6);%stergere 
z1=size(y1);
disp(z1),disp( ' dim dupa stergere')
disp(z),disp('  dim inainte ')
disp(y1)