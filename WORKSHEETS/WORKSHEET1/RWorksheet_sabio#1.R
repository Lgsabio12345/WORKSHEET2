
#1. Set up a vector named age, consisting of 34, 28, 22, 36, 27, 18, 52, 39, 42, 29,
#35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 42, 53, 41,
#51, 35, 24, 33, 41.
age <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29,35, 31, 27, 22, 37,
         34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 42,
         53, 41,51, 35, 24, 33, 41)
age 
#a. How many data points?
length(age)
  
#2. Find the reciprocal of the values for age.
reciprocal <- function(age) vec <- 1/age
recage <- reciprocal(age)
recage

#3. Assign also new_age <- c(age, 0, age).
new_age <- c(age, 0, age)
new_age

#4. Sort the values for age.
sort(age)


#5. Find the minimum and maximum value for age.
min(age)
max(age)

#6. Set up a vector named data, consisting of 2.4, 2.8, 2.1, 2.5,
#2.4, 2.2, 2.5, 2.3,2.5, 2.3, 2.4, and 2.7.
data <- c(2.4, 2.8, 2.1, 2.5,2.4, 2.2, 2.5, 2.3,2.5, 2.3, 2.4, 2.7)
data
#a. How many data points?
length(data)

#7. Generates a new vector for data where you double every value of the data.
data*2

#8. Generate a sequence for the following scenario:
#8.1 Integers from 1 to 100.
num1 <- seq (1,100)
num1
length(num1)
#8.2 Numbers from 20 to 60
num2 <- seq(20,60)
num2
length(num2)
#8.3 Mean of numbers from 20 to 60
num3 <- mean(20:60)
num3
length(num3)
#8.4 Sum of numbers from 51 to 91
num4 <- sum(51:91)
num4
length(num4)
#8.5 Integers from 1 to 1,000 
num5 <- 1:1000
numSeq
#a. How many data points from 8.1 to 8.4?
sum(length(num1),length(num2),length(num3),length(num4))
#c. For 8.5 find only maximum data points until 10
max(1:10)

#9. Print a vector with the integers between 1 and 100 that are not divisible by 3, 5 and 7
#using filter option.
Filter(function(i) { all(i %% c(3,5,7) != 0) }, seq(100))
   
#10. Generate a sequence backwards of the integers from 1 to 100.
seq (100,1)
#or
numbers <- seq(1:100)
numbers
numbers <- sort(numbers, decreasing = TRUE)
numbers

#11. List all the natural numbers below 25 that are multiples of 3 or 5.
#Find the sum of these multiples.
sum (3, 5, 6, 9, 10, 12, 15, 18, 20, 21, 24)
#a. How many data points from 10 to 11?
length(10:11)

#12. Statements can be grouped together using braces ‘{’ and ‘}’. A group of statements
#is sometimes called a block. Single statements are evaluated when a new line is typed at
#the end of the syntactically complete statement. Blocks are not evaluated until a new line is
#entered after the closing brace.
#Enter this statement:
{ x <- 0+ x + 5 + }

#13. *Set up a vector named score, consisting of 72, 86, 92, 63, 88, 89, 91, 92, 75,
#75 and 77. To access individual elements of an atomic vector, one generally uses
#the x[i]construction.
#Find x[2] and x[3]. Write the R code and its output.
score <- c(72, 86, 92, 63, 88, 89, 91, 92, 75, 75, 77)
score
x[2]
x[3]

#14. *Create a vector a = c(1,2,NA,4,NA,6,7).
#a. Change the NA to 999 using the codes print(a,na.print="-999").
a <-c(1,2,NA,4,NA,6,7)
print(a,na.print="-999")

#15. A special type of function calls can appear on the left hand side of the assignment operator as in > 
class(x) <- "foo"
#Follow the codes below:
name = readline(prompt="Input your name: ")
age = readline(prompt="Input your age: ")
print(paste("My name is",name, "and I am",age ,"years old."))
print(R.version.string)

