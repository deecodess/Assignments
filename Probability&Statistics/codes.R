
#ques1
ans=dunif(45,0,60)
ans
sum=punif(30,0,60,lower.tail=FALSE)
sum

#ques2
ans3=pexp(3,1/2)
ans3
x=seq(0,5,by=0.5)
a<-dexp(x,1/2)
plot(x,a,type='l')
b<-pexp(x,1/2)
plot(x,b,type='l')
c<-rexp(1000,1/2)
plot(c,type='l')



#ques3
ans2=1-pgamma(1,shape=2,scale=1/3)
ans2
ans4=qgamma(0.70,shape=2,scale=1/3)
ans4


library("pracma")
#ass2, ques1
fun<-function(x,y){
  2*(2*x+3*y)/5
}
a<-integral2(fun,0,1,0,1)
a


#ass2, ques 2

f<-function(x,y){
  (x+y)/30
}
a<-matrix(c(f(0,0:2),f(1,0:2),f(2,0:2),f(3,0:2)),4,3,byrow=TRUE)
sum(a)
a
sum(apply(a,1,sum))
sum(apply(a,2,sum))
t<-apply(a,2,sum)
c<-a[1,2]/t[2]
c


