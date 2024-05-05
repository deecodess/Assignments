data=read.csv(file.choose())
data
dim(data)
nrow(data)
head(data,10)
mean(data$Wall.Thickness)
hist(data$Wall.Thickness,col="red")
abline(v=12.80205,col="cyan",lty=10)
n=9000
for(i in 1:10)
#[i]=mean(sample(Wall.Thickness,10,replace = T))#in place of Wall.Thickness use data$Wall.Thickness
par(mfrow=c(1:3))#to plot multiple plots
#[i]=mean(sample(Wall.Thickness,10,replace = T))
#similarly plot for all the other parts
s1[i]=mean(sample(data$Wall.Thickness,50,replace=T))
s=c()
s1=c()
s2=c()
n=9000
for(i in 1:n){
s[i]=mean(sample(data$Wall.Thickness,10,replace=T))
s1[i]=mean(sample(data$Wall.Thickness,50,replace=T))
s2[i]=mean(sample(data$Wall.Thickness,500,replace=T))
}
par(mfrow=c(1,3))
hist(s,col="red")
hist(s1,col="blue")
hist(s2,col="green")