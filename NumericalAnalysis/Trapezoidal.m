f=@(x)(cox(x))^2;
a=input('Enter lower limit a: ');
b=input('Enter upper limit b: ');
n=input('Enter the number of subinterval: ');
h=(b-a)/n;
sum=0;
for k=1:1:n-1
    x(k)=a+k*h;
    y(k)=f(x(k));
    sum=sum+y(k);
end
trap=h/2*(f(a)+f(b)+2*sum);
disp('The value of integration is: ')
disp(trap)