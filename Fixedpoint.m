x=input('Enter the value of x0: ');
N=input('Enter the number of iterations: ');
tol=input('Enter the value of tolerace: ');
g=@(x)exp(-x)
i=1;
y=g(x);
if y==x
    disp(y)
end
while(i<=N)
    x=y;
    y=g(x)
    if(abs(x-y)<tol)
        break;
    end
    i=i+1;
end
disp('Fixed Point is ')
y