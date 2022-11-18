clc
clear;
A=[4 1 3 -1; 0 -5 1 4; 0 0 2 3; 0 0 0 1]
xo=[1;1;1;1];
n=2;
tol=0.00001;
err=1;
i=0;
while (err>tol)
    y=A*xo;
    k=max(y);
    x1=y/k;
    y=A*x1;
    k1=max(y);
    if (abs(k-k1)<tol)
        disp(k1)
        break;
    end;
    
    k=k1
    disp(x1)
end;
x1
k1