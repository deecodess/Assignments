f=@(x)(cox(x))^2;
a=input('Enter lower limit a: ');
b=input('Enter upper limit b: ');
n=input('Enter the number of subinterval: ');
h=(b-a)/n;
sum=0;
for k=1:1:n-1
    x(k)=a+k*h;
    y(k)=f(x(k));
    if mod(k,2)==0
        sum=sum+y(k);
    else
        sum=sum+4*y(k);
    end
end
simp=h/3*(f(a)+f(b)+sum);
disp('The value of integration is: ')
disp(simp)