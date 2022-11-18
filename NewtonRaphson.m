%Input: Initial approimation x0,tolerance E, maximum number of iterations N
%STEP 1: Set i=1
%STEP 2: While i<N do Steps 3 to 6
%STEP 3: Set x1=x0-f(x0)/f'(x0). Compute xi
%STEP 4: If |x1-x0|<=E or |x1-x0|/|x1|<E. then Output x1 and stop
%STEP 5: Set i=i+1
%STEP 6: Set x0=x1 (Update x0)
%STEP 7: Output 

syms x;
a=x^2-17;
err=10;
x0=input('Enter the initial guess: ');
tol=input('Enter allowed error: ');
f=inline(a)
dif=diff(sym(a))
d=inline(dif);
while err>tol
    x1=x0-((f(x0)/d(x0)));
    err=abs((x1-x0)/x1);
    x0=x1;
end
root=x1