
#1. The table shows the enrollment of BS in Computer Science, SY 2010-2011
#a. Plot the data using a bar graph. Write the codes and copy the result.
students <- c( 80 , 75, 70, 60)
year<- c("1st", "2nd", "3rd", "4th")

barplot( students,
         names.arg =  year)
#b. Using the same table, label the barchart with Title = ” Enrollment of BS Computer
#Science, horizontal axis = “Curriculum Year” and vertical axis = “number of students”
barplot(students,
        main = "Enrollment of BS Computer Science",
        names.arg = year,
        xlab = "Curriculum Year",
        ylab = "Number of Students", 
        border = "blue",
        col = "black"
)
#2. The monthly income of De Jesus family was spent on the following:
#60% on Food, 10% on electricity, 5% for savings, and
#25% for other miscellaneous expenses.
#a. Create a table for the above scenario. Write the codes and its result.
income <- data.frame(
  expenses = c("Food", "Electricity", "Savings", "Miscellaneous"),
  rate = c( 60, 10, 5, 25)
)
income
data_income <- table(income)
data_income


#b. Plot the data using a pie chart. Add labels, colors and legend.
#Write the codes and its result.
rate = c( 60, 10, 5, 25)
data1 <- round(rate/sum(rate)*100,1)
data1 <- paste(data1, "%", sep = " ")

plotChart <- pie( rate, labels = data1, cex = 0.8, col = rainbow(4), main = "De Jesus family Monthly Expenses")
legend("topright", c("Food", "Electricity", "Savings", "Miscellaneous"),
       cex = 0.8 , fill =rainbow(4))

#3. Open the mtcars dataset.
data("mtcars")
#a. Create a simple histogram specifically for mpg (miles per gallon) variable.
#Use $ to select the mpg only. Write the codes and its result.
mpgonly <- (mtcars$mpg)
mpgonly

#b. Colored histogram with different number of bins.hist(mtcars$mpg, breaks=12, col="red")
#Note: breaks= controls the number of bins
hist(mpgonly, breaks=12, col="red")

#c. Add a Normal Curve.Copy the result.
histoCurve <- mpgonly
h<-hist(histoCurve, breaks=10, col="red", xlab="Miles Per Gallon",
        main="Histogram with Normal Curve")
xfit<-seq(min(histoCurve),max(histoCurve),length=40)
yfit<-dnorm(xfit,mean=mean(histoCurve),sd=sd(histoCurve))
yfit <- yfit*diff(h$mids[1:2])*length(histoCurve)
lines(xfit, yfit, col="blue", lwd=2)

#4. Open the iris dataset. Create a subset for each species.
#a. Write the codes and its result.
data(iris)
dataIris <- data.frame(iris)
dataIris
virginica_Subset <- subset(iris, Species == 'virginica')
virginica_Subset
setosa_Subset <- subset(iris, Species == 'setosa')
setosa_Subset
versicolor_Subset <- subset(iris, Species == 'versicolor')
versicolor_Subset

#b. Get the mean for every characteristics of each species using colMeans().
#Write the codes and its result.
#Example: setosa <- colMeans(setosa[sapply(setosaDF,is.numeric)])
virginica <- colMeans(virginica_Subset[sapply(virginica_Subset,is.numeric)])
virginica 
setosa <- colMeans(setosa_Subset[sapply(setosa_Subset,is.numeric)])
setosa 
versicolor <- colMeans(versicolor_Subset[sapply(versicolor_Subset,is.numeric)])
versicolor

#c. Combine all species by using rbind()
#The table should be look like this:
iris_data <- rbind( setosa, versicolor, virginica)
dfIris <- data.frame(iris_data)
dfIris
#d. From the data in 4-c: Create the barplot().
#Write the codes and its result.The barplot should be like this.

barplot(height = as.matrix(dfIris),main = "Iris Data",
         ylab = "Mean Scores", 
          xlab = "Characteristics",
         beside =TRUE, col = rainbow(3)
        )
 
