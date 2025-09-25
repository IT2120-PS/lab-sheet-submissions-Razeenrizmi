#Exercise 2
#Q1
setwd("C:\\Users\\it24300057\\Desktop\\IT24300057")
data<-read.table("Exercise - LaptopsWeights.txt",header=TRUE)
fix(data)
attach(data)

popmn<-mean(Weight.kg.)
popsd<-sd(Weight.kg.)

#Q2
samples<-c()
n<-c()

for(i in 1:25){
  s<-sample(Weight.kg.,6,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('s',i))
}

colnames(samples)=n

s.means<-apply(samples,2,mean)
s.sd<-apply(samples,2,sd)

samplemean<-mean(s.means)
samplevars<-var(s.means)
samplesd<-sd(s.sd)

popmn
samplemean

truesd=popsd/6
samplesd