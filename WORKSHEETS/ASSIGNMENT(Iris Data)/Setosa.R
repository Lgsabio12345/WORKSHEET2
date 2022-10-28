#Setosa Sub-set
setosa_Subset <- subset(iris, Species == 'setosa')
setosa_Subset

#Total Mean of Setosa Species
setosa_mean <- mean(colMeans(setosa_Subset[,1:4]))
setosa_mean

#Mean of each characteristics of the species
setosacharac_mean <- colMeans(setosa_Subset[,1:4])
setosacharac_mean
# Sepal.Length
setsl_mean <- c(setosa_Subset$Sepal.Length)
mean(setsl_mean)
# Sepal.Width
setsw_mean <- c(setosa_Subset$Sepal.Width)
mean(setsw_mean)
# Petal.Length
setpl_mean <- c(setosa_Subset$Petal.Length)
mean(setpl_mean)
# Petal.Width 
setpw_mean <- c(setosa_Subset$Petal.Width)
mean(setpw_mean)

