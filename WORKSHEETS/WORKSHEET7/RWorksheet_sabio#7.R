
install.packages('Hmisc')
library(Hmisc)
install.packages('pastecs')
library(pastecs)
# Basic Statistics
#1. Create a data frame for the table below.

scores <- data.frame(
          Student = seq(1:10),
          Pre_test = c(55, 54, 47, 57, 51, 61, 57, 54, 63, 58),
          post_test = c(61, 60, 56, 63, 56, 63, 59, 56, 62, 61)
          )
scores
colnames(scores) <- c("Student", "Pre-test", "Post-test")
scores

#a. Compute the descriptive statistics using different packages (Hmisc and pastecs).
#Write the codes and its result.

dsHmisc <- describe(scores)
dsHmisc
dsPastecs <- stat.desc(scores)
dsPastecs

#2. The Department of Agriculture was studying the effects of several levels of a
#fertilizer on the growth of a plant. For some analyses, it might be useful to convert
#the fertilizer levels to an ordered factor.
#The data were 10,10,10, 20,20,50,10,20,10,50,20,50,20,10.
#a. Write the codes and describe the result.
data <- c(10,10,10, 20,20,50,10,20,10,50,20,50,20,10)
factor(data)
sort(data, decreasing = FALSE)
#The result displays the differerent levels of fertilizer in an ordered or increasing manner.

#3. Abdul Hassan, president of Floor Coverings Unlimited, has asked you to study
#the exercise levels undertaken by 10 subjects were “l”, “n”, “n”, “i”, “l” ,
#“l”, “n”, “n”, “i”, “l” ; n=none, l=light, i=intense

#a. What is the best way to represent this in R?
exerciseLevels <- c("l", "n", "n", "i", "l", "l", "n", "n", "i", "l")
exerciseLevels
factor(exerciseLevels)

# They are best respresented through data.frame.

#4. Sample of 30 tax accountants from all the states and territories of Australia and
#their individual state of origin is specified by a character vector of state mnemonics as:
  state <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa", "qld",
             "vic", "nsw", "vic", "qld", "qld", "sa", "tas", "sa", "nt",
             "wa", "vic", "qld", "nsw", "nsw", "wa", "sa", "act", "nsw",
             "vic", "vic", "act")
#a. Apply the factor function and factor level. Describe the results.
  factorState <- factor(state)
  factorState
  factorLevel <- levels(factorState)
  factorLevel
  
  #The factor() function displays the vector and its levels.

    #The levels() function simple displays the levels or differenct characters the have been used.
#5. From #4 - continuation:
# Suppose we have the incomes of the same tax accountants in another vector 
#(in suitably large units of money)
incomes <- c(60, 49, 40, 61, 64, 60, 59, 54,
             62, 69, 70, 42, 56, 61, 61, 61, 58, 51, 48,
             65, 49, 49, 41, 48, 52, 46, 59, 46, 58, 43)
incomes
data2 <- data.frame(
  state = c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa", "qld",
            "vic", "nsw", "vic", "qld", "qld", "sa", "tas", "sa", "nt",
            "wa", "vic", "qld", "nsw", "nsw", "wa", "sa", "act", "nsw",
            "vic", "vic", "act"),
  incomes = c(60, 49, 40, 61, 64, 60, 59, 54, 62, 69, 70, 42, 56, 61, 61,
              61, 58,51, 48,  65, 49, 49, 41, 48, 52, 46, 59, 46, 58, 43)
)
data2

#a. Calculate the sample mean income for each state we can now use the special
#function tapply():
  tapply(incomes, state, mean)
  
#b. Copy the results and interpret.
  tapply(incomes, state, mean)
# It displays the levels of the vector and their corresponding mean.

#6. Calculate the standard errors of the state income means (refer again to number 3)
#a. What is the standard error? Write the codes.
  stdError <- function(x) sqrt(var(x)/length(x))
  incster <- tapply(incomes, state, stdError)
  incster
#b. Interpret the result.
  # The result displays the sample distribution's standard deviation or an estimate of the SE. 
  # It displays the levels and their corresponding SD.
  
#7. Use the titanic dataset.
  data("Titanic")
  TitanicDF <- as.data.frame(Titanic)
  TitanicDF
#a. subset the titatic dataset of those who survived and not survived. Show the
#codes and its result.
  
  #survived
  survivedSUB <- subset(TitanicDF , Survived == 'Yes')
  survivedSUB
  
  #notsurvived
  notsurvivedSUB <- subset(TitanicDF , Survived == 'No')
  notsurvivedSUB
#8. The data sets are about the breast cancer Wisconsin. The samples arrive periodically as Dr. Wolberg reports his clinical cases. The database therefore reflects this
#chronological grouping of the data. You can create this dataset in Microsoft Excel.
  library("readxl")
  BreastCancer <- read_excel("C:/Users/darwin sabio/Documents//BreastCancer_Data.xlsx")
  BreastCancer
#a. describe what is the dataset all about.
  # The dataset is all about breast cancer clinical cases such as the cancer's CL thickness, Cell size,	Cell Shape,	Marg. Adhesion,	Epith. C.size,	Bare. Nuclei,	
  #Bl. Cromatin,	Normal nucleoli,	Mitoses and its	Class.
  
#b. Import the data from MS Excel. Copy the codes.
  BreastCancer <- read_excel("C:/Users/darwin sabio/Documents//BreastCancer_Data.xlsx")
  BreastCancer
#c. Compute the descriptive statistics using different packages. Find the values of:
#c.1 Standard error of the mean for clump thickness.
  SDclump <- sd(BreastCancer$`CL. thickness`/sqrt(length((BreastCancer$`CL. thickness`))))
  SDclump
#c.2 Coefficient of variability for Marginal Adhesion.
  CVmarg <- sd(BreastCancer$`Marg. Adhesion`) / mean(BreastCancer$`Marg. Adhesion`) * 100
  CVmarg 
#c.3 Number of null values of Bare Nuclei.
  NumberbareNuc <- sum(is.na(BreastCancer$`Bare. Nuclei`))
  NumberbareNuc
#c.4 Mean and standard deviation for Bland Chromatin
  MeanBland <- mean(BreastCancer$`Bl. Cromatin`)
  MeanBland 
  
  SDBland <- sd(BreastCancer$`Bl. Cromatin`)
  SDBland 
#c.5 Confidence interval of the mean for Uniformity of Cell Shape
  MeanCell <- mean(BreastCancer$`Cell Shape`)
  SDCell <- sd(BreastCancer$`Cell Shape`)/sqrt(length(BreastCancer$`Cell Shape`))
  
  alpha <- 0.05
  dg <- length(BreastCancer$`Cell Shape`) - 1
  
  t.score <- qt(p = alpha/2 , df = dg, lower.tail = F)
  
  margin.error <- t.score * SDCell
  lower.bound <- MeanCell - margin.error
  upper.bound <- MeanCell + margin.error
  
  CFinterval <- c(lower.bound, upper.bound)
  CFinterval
#d. How many attributes?
#NULL
  
#e. Find the percentage of respondents who are malignant. Interpret the results.
#9. Export the data abalone to the Microsoft excel file. Copy the codes.
install.packages("AppliedPredictiveModeling")
library("AppliedPredictiveModeling")
view(abalone)
head(abalone)
summary(abalone)
