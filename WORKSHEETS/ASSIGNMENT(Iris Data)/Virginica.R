#Virginica Sub-set
virginica_Subset <- subset(iris, Species == 'virginica')
virginica_Subset

#Total Mean of Virginica Species
virginica_mean <- mean(colMeans(virginica_Subset[,1:4]))
virginica_mean

#Mean of each characteristics of the species
virginicaCharac_mean <- colMeans(virginica_Subset[,1:4])
virginicaCharac_mean
# Sepal.Length
virsl_mean <- c(virginica_Subset$Sepal.Length)
mean(virsl_mean)
# Sepal.Width
virsw_mean <- c(virginica_Subset$Sepal.Width)
mean(virsw_mean)
# Petal.Length
virpl_mean <- c(virginica_Subset$Petal.Length)
mean(virpl_mean)
# Petal.Width 
virpw_mean <- c(virginica_Subset$Petal.Width)
mean(virpw_mean)

