
#1. The table below shows the data about shoe size and height. Create a data frame..
shoe_size <- data.frame (
       shoeSize = c(6.5, 9.0, 8.5, 8.5, 10.5, 7.0, 9.5, 9.0, 13.0, 7.5, 10.5, 8.5, 12.0, 10.5, 13.0, 11.5,
                    8.5, 5.0, 10.0, 6.5, 7.5, 8.5, 10.5, 8.5, 10.5, 11.0, 9.0, 13.0  ),
       height = c(66.0, 68.0, 64.5, 65.0, 70.0, 64.0, 70.0, 71.0, 72.0, 64.0, 74.5, 67.0, 71.0, 71.0,
                   77.0, 72.0, 59.0, 62.0,72.0, 66.0, 64.0, 67.0,73.0, 69.0, 72.0, 70.0, 69.0, 70.0),
       Gender = c('F', 'F', 'F', 'F', 'M', 'F', 'F', 'F', 'M', 'F', 'M', 'F', 'M', 'M', 'M', 
                  'M', 'F', 'F', 'M', 'F', 'F', 'M','M', 'F', 'M', 'M', 'M', 'M')
       
)
shoe_size

names(shoe_size) <- list("Shoe size", "Height", "Gender") 
shoe_size

#a. Describe the data.
# The table shows three columns such as "Shoe size", "Height", and "Gender". 
#I noticed that the taller the person is, the bigger the shoe size is. 
#Mostly males had bigger shoe size and taller compare to females.

#b. Find the mean of shoe size and height of the respondents.
sizeNheight <- subset(shoe_size[ 1:2])
sizeNheight
meanSH <- colMeans(sizeNheight)
meanSH
#Copy the codes and results.

#c. Is there a relationship between shoe size and height? Why?
sizeNheight <- subset(shoe_size[c( 1, 2)])
meanSH <- colMeans(sizeNheight)
mean(meanSH)
# Yes. because I think the taller you are, the bigger your shoe size is.

#2. Construct character vector months to a factor with factor() and assign the result to
#factor_months_vector. Print out factor_months_vector and assert that R prints out
#the factor levels below the actual values.
months_vector <- c("March","April","January","November","January", "September","October","September",
           "November","August","January","November","November","February","May","August",
           "July","December","August","August","September","November","February","April")
factor_months_vector <- factor(months_vector)
factor_months_vector

#3
#3. Then check the summary() of the months_vector and factor_months_vector. |
#Interpret the results of both vectors. Are they both equally useful in this case?
summary_months <- summary(months_vector)
summary_months

summary_factor_months <- summary(factor_months_vector)
summary_factor_months

#   The summary() of the months_vector displays the length, class, and mode of the 
#vector months_vector while the summary() of the factor_months_vector displays
#the different months of the year and their corresponding frequency or 
#how many times it was mentioned in the vector.
#   They are both equally useful in this case.

#4. Create a vector and factor for the table below.
#Note: Apply the factor function with required order of the level.
factor_data <- c("East", "West", "North")
new_order_data <- factor(factor_data,levels = c("East","West","North"))
print(new_order_data)

# 5. Enter the data below in Excel with file name = import_march.csv
#a. Import the excel file into the Environment Pane using read.table() function.
#Write the code.
Import <- read.table("import_march.csv", header =  TRUE, sep = ",")
Import

#b. View the dataset. Write the code and its result.
View(import_march_csv)

