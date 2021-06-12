# Exercies 8

colleges = read.csv("ISL/datasets/College.csv")
colleges
fix(colleges)
rownames(colleges)=colleges[,1]
fix(colleges)
colleges=colleges[,-1]
summary(colleges)
pairs(colleges[,2:11])

boxplot(colleges$Outstate)

elite=rep("No", length(colleges[,1]))
elite[colleges$Top10perc > 50]="Yes"
elite=as.factor(elite)
colleges=data.frame(colleges, elite)
summary(colleges)

boxplot(colleges$elite)

par(mfrow=c(2,2))
hist(colleges$F.Undergrad, breaks=15)
hist(colleges$PhD)
hist(colleges$Grad.Rate)

# Exercise 9

auto=read.csv("ISL/datasets/Auto.csv")
summary(auto)
sapply(auto[,c(1:3,5:8)], range)
sapply(auto[,c(1:3,5:8)], mean)
sapply(auto[,c(1:3,5:8)], sd)

auto.small=auto[c(1:10, 85:nrow(auto)),]
summary(auto.small)
sapply(auto.small[,c(1:3,5:8)], range)
sapply(auto.small[,c(1:3,5:8)], mean)
sapply(auto.small[,c(1:3,5:8)], sd)

auto$horsepower=as.integer(auto$horsepower)
pairs(auto[,1:6])

# Excerise 10
library(MASS)
nrow(Boston)
ncol(Boston)
?Boston

pairs(Boston)

par(mfrow=c(1,3))
hist(Boston$crim)
hist(Boston$tax)
hist(Boston$ptratio)

par(mfrow=c(1,2))
plot(Boston$tax, Boston$crim)
plot(Boston$ptratio, Boston$crim)

range(Boston$crim)
range(Boston$tax)
range(Boston$ptratio)

median(Boston$ptratio)
Boston[Boston$medv==min(Boston$medv),]

nrow(Boston[Boston$rm > 7,])
nrow(Boston[Boston$rm > 8,])

hist(Boston$rm)
