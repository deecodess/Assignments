%STEP 1: Choose two real numbers a and b such that f(a)f(b)<0
%STEP 2: Set p=(a+b)/2
%STEP 3: a) If f(a)f(p)<0, then root lies in the interval (a,p). Set b=p
%and go to step 2.
%STEP 3: b) If f(a)f(p)>0, then root lies in the interval (p,b). Set a=p
%and go to step 2.
%STEP 3: c) If f(a)f(p)=0, it means that p is root of the equation and
%computation may be terminated
a=input('Enter initial value a')
b=input('Enter initial value b')
f=@(x) x^2-4*x-2;
if f(a)*f(b)>0
    disp('Wrong choice of initial condition')
else
    p=(a+b)/2;
    e=abs(f(p));
    while e>1e-4
        if f(a)*f(p)<0
            b=p;
        else
            a=p;
        end
        p=(a+b)/2;
        e=abs(f(p));
    end
end
p
