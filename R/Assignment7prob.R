hist(rt(100,99))
df=c(2,10,25)
rchisq(100,2)
rchiq(100,10)
rchiq(100.25)
x<-seq(-6,6,length=100)
dt(x,1)
dt(x,4)
dt(x,10)
b<-dt(x,30)
plot(x,b,type='l')#Make it line using type='l' and to create random we use r
df=c(1,4,10)
color=c("red","blue","green")
for(i in 1:3){
lines(x,dt(x,df[i]),col=color[i])}
# t and chi = 1 degree of freedom nad in f= 2 degree of freedom
qf(0.95,10,20)
#3 paert of 4th is same as first
#4(2)
pf(1.5,10,20)
#4(3)
rf(1000,10,20)
#In greater he lowe.tail should be made false