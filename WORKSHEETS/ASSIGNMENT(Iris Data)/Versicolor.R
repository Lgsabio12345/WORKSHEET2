#Versicolor Sub-set
versicolor_Subset <- subset(iris, Species == 'versicolor')
versicolor_Subset

#Total Mean of Versicolor Species
versicolor_mean <- mean(colMeans(versicolor_Subset[,1:4]))
versicolor_mean

#Mean of each characteristics of the species
versicolorcharac_mean <- colMeans(versicolor_Subset[,1:4])
versicolorcharac_mean
# Sepal.Length
versl_mean <- c(versicolor_Subset$Sepal.Length)
mean(versl_mean)
# Sepal.Width
versw_mean <- c(versicolor_Subset$Sepal.Width)
mean(versw_mean)
# Petal.Length
verpl_mean <- c(versicolor_Subset$Petal.Length)
mean(verpl_mean)
# Petal.Width 
verpw_mean <- c(versicolor_Subset$Petal.Width)
mean(verpw_mean)
