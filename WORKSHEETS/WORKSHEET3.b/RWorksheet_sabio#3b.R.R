
#1.Create a data frame using the table below.
# a. Write the codes.
Table1 <- data.frame(
              Respondents = seq(1:20),
              Sex = rep(c(2,1,2,1,2,1,2),c(2,1,7,1,7,1,1)),
              Fathers_Occupation = c(1,3,3,3,1,2,3,1,1,1,3,2,1,3,3,1,3,1,2,1),
              Persons = c(5,7,3,8,5,9,6,7,8,4,7,5,4,7,8,8,3,11,7,6),
              Siblings= c(6,4,4,1,2,1,5,3,1,2,3,2,5,5,2,1,2,5,3,2),
              Houses = c(1,2,3,1,1,3,3,1,2,3,2,3,2,2,3,3,3,3,3,2)
              )                      
Table1
names(Table1) <- list("Respondents","Sex","Fathers Occupation","Persons at Home",
                     "Siblings at school","Types of houses")
Table1 

#b. Describe the data. Get the structure or the summary of the data
# The Sex, Fathers Occupation, and Siblings at school column shows a data with 
#numbers and each numbers correspond to a value also known as their legends.
summary(Table1)                                     
                                     
#c. Is the mean number of siblings attending is 5?
# NO. The Mean of the number of siblings attending is 2.95.

#d. Extract the 1st two rows and then all the columns using the subsetting functions.
#Write the codes and its output.
subset_one <- subset(Table1[1:2,])                                      
subset_one                                    

#e. Extract 3rd and 5th row with 2nd and 4th column. Write the codes and itsresult.   
subset_two <- subset(Table1[c( 3, 5 ),c(2,4)])
subset_two

#f. Select the variable types of houses then store the vector that results as types_houses.
#Write the codes.
types_houses <- c(Table1$`Types of houses`)                    
types_houses                               

#g. Select only all Males respondent that their father occupation was farmer. Write
#the codes and its output.
Table2 <- data.frame(
  Respondents = seq(1:20),
  Sex = rep(c(2,1,2,1,2,1,2),c(2,1,7,1,7,1,1)),
  Fathers_Occupation = c(1,3,3,3,1,2,3,1,1,1,3,2,1,3,3,1,3,1,2,1),
  Persons = c(5,7,3,8,5,9,6,7,8,4,7,5,4,7,8,8,3,11,7,6),
  Siblings= c(6,4,4,1,2,1,5,3,1,2,3,2,5,5,2,1,2,5,3,2),
  Houses = c(1,2,3,1,1,3,3,1,2,3,2,3,2,2,3,3,3,3,3,2)
)                      
Table2

MaleFar <- subset(Table2, Sex == '1' & Fathers_Occupation == '1')
MaleFarNames <- MaleFar[c(2,3)]
MaleFarNames

#h. Select only all females respondent that have greater than or equal to 5 number
#of siblings attending school. Write the codes and its outputs  

MaleFar2 <- subset(Table2,Sex == '2' & Siblings >= '5')
MaleFarNames2 <- MaleFar2[c(2,5)]
MaleFarNames2 

#2. Write a R program to create an empty data frame. Using the following codes:
  df = data.frame(Ints=integer(),
                  Doubles=double(), Characters=character(),
                  Logicals=logical(),
                  Factors=factor(),
                  stringsAsFactors=FALSE)
print("Structure of the empty dataframe:")
print(str(df))
#a. Describe the results.
# The results display the internal structure of the 'df' data frame. 
# It shows that the data frame has null or empty structure.

#3. Interpret the graph.
# The graph shows the 'Sentiments of Tweets per day- Donald Trumo'. It shows a 
#barplot with legend,y-axis containing the 'Count of Sheet' data,x-axis containing 
#the corresponding legends of each bar , and an abline that created a vertical 
#lines to a graph and the date that was put above the daily data sentiments to highlight it. 

#The graph shows that Donald Trump receives a lot more negative tweet sentiments 
#than positive tweet sentiments every day.There are also a bit
#lesser neutral sentiments compared to the first mentioned two.
                         
 