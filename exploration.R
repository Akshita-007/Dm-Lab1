mydata<-iris
dim(mydata)
names(mydata)
str(mydata)
attributes(mydata)
head(mydata)
tail(mydata)
mydata[1:5,]
#samples are random selections from a set
idx<-sample(1:nrow(mydata),5)
idx
mydata[idx,] #returns the random index values from idx
mydata[1:5,"Sepal.Length"]
mydata[1:5,5]
mydata[1:5,4]
mydata$Sepal.Length[1:5]
mydata$Petal.Width[1:5]
summary(mydata)
#statistics
mean(mydata$Sepal.Length)
median(mydata$Sepal.Width)
range(mydata$Petal.Length)
quantile(mydata$Petal.Width)
quantile(mydata$Petal.Width,c(0.1, 0.5, 0.65))
var(mydata$Sepal.Length)
#Plots
hist(mydata$Sepal.Length)
density(mydata$Sepal.Length)
graph<-density(mydata$Sepal.Length)
plot(graph)
table(mydata$Species)
pie(table(mydata$Species))
barplot(table(mydata$Species))

#covarience and correlation
cov(mydata$Sepal.Length, mydata$Petal.Length)
cor(mydata$Sepal.Length, mydata$Petal.Length)

#boxplot: shows median, first and third quartile
boxplot(Sepal.Length ~ Species, data=mydata, xlab="Species", ylab="Sepal.Length")

#scatter plot: drawn for 2 numeric values. col = colours in the plot, pch: symbols of points
plot(mydata$Sepal.Length, mydata$Sepal.Width, col=mydata$Species, pch=as.numeric(mydata$Species))

#plotting with adder noise or jitter, god knows why
plot(jitter(mydata$Sepal.Length), jitter(mydata$Sepal.Width))

#turns on abstract blue balls mode
smoothScatter(mydata$Sepal.Length, mydata$Sepal.Width)

#it's magic, plots for all possible combinations
pairs(mydata)

