clc
clear
x=[-1,0,1,3];
y=[1,1,1,25];
n=2;
p=4;
for i=1:1:n
    L(i)=1;
    for j=1:1:n
        if j~=i
        L(i)=(p-x(j))/(x(i)-x(j))*L(i);
        end
    end
end
sum=0.0;
for i=1:n
    sum=sum+L(i)*y(i);
end
sum
