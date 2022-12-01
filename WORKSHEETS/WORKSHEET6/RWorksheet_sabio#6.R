
library(dplyr)
library(ggplot2)
# 1. How many columns are in mpg dataset? How about the number of rows? Show the codes and its result.
data(mpg)
mpg_data <- glimpse(mpg)
mpg_data 

#2. Which manufacturer has the most models in this data set? 
mostModels <- mpg_data %>% group_by(manufacturer) %>% count()
mostModels
colnames(mostModels) <- c("Manufacturer","Counts")
mostModels
#  Dodge, it has 37 models.

#Which model has the most variations?
mostVar<- mpg_data %>% group_by(model) %>% count()
mostVar
colnames(mostVar) <- c("Model","Counts")
mostVar
# Caravan 2wd model, it has 11 variations.

#a. Group the manufacturers and find the unique models. Copy the codes and result.
manUnique <- mpg_data %>% group_by(manufacturer, model) %>% distinct() %>% count()
manUnique
colnames(manUnique) <- c("Manufacturer", "Model","Counts")
manUnique

#b. Graph the result by using plot() and ggplot(). Write the codes and its result.
plot(manUnique)
ggplot(manUnique, aes(x = Model, y = Counts )) + geom_point(color='blue')

#3. Same dataset will be used. You are going to show the relationship of the model 
#and the manufacturer.
ggplot(manUnique, aes(x = Model, y = Manufacturer )) + geom_point(color='blue')

#a. What does ggplot(mpg, aes(model, manufacturer)) + geom_point() show?
ggplot(mpg, aes(model, manufacturer)) + geom_point()
# It displaysa black points.

# b. For you, is it useful? If not, how could you modify the data to make it more informative?
# Yes, it is very useful.

#4. Using the pipe (%>%), group the model and get the number of cars per model.
# Show codes and its result.
carsModel <- mpg_data %>% group_by(model) %>% count()
carsModel
colnames(carsModel) <- c("Model","Counts")
carsModel

#a. Plot using the geom_bar() + coord_flip() just like what is shown below.
#Show codes and its result.

barg <- ggplot(carsModel, aes( Model, Counts )) +
  geom_bar(stat = "identity")

barg +
coord_flip()
                   
# b. Use only the top 20 observations. Show code and results.
head(carsModel, n = 20)

#5. Plot the relationship between cyl - number of cylinders and displ - engine displacement 
#using geom_point with aesthetic colour = engine displacement. Title should be
#“Relationship between No. of Cylinders and Engine Displacement”.
#a. Show the codes and its result.

ggplot(mpg, aes(x = displ , y = cyl, col = displ )) + geom_point()

ggplot( data = mpg) +
   geom_point(mapping = aes(x = displ , y = cyl, col = displ))

ggplot(data = mpg, mapping = aes(x = displ, y = cyl)) +
  geom_point(mapping=aes(color=displ))

#b. How would you describe its relationship?
# i would describe their relationship as consistent or stable

#6. Get the total number of observations for drv - type of drive train (f = front-wheel drive,
# r = rear wheel drive, 4 = 4wd) and class - type of class (Example: suv, 2seater, etc.).

front <- subset(mpg, drv == 'f')
front <- nrow(front)
front

rear <- subset(mpg, drv == 'r')
nrow(rear)
rear

four <- subset(mpg, drv == '4')
nrow(four)
four

suv <- subset(mpg, class == 'suv')
nrow(suv)
suv

compact <- subset(mpg, class == 'compact')
nrow(compact)
compact

midsize <- subset(mpg, class == 'midsize')
nrow(midsize)
midsize

twoseater <- subset(mpg, class == '2seater')
nrow(twoseater)
twoseater

minivan <- subset(mpg, class == 'minivan')
nrow(minivan)
minivan

pickup <- subset(mpg, class == 'pickup')
nrow(pickup)
pickup

sub <- subset(mpg, class == 'subcompact')
nrow(sub)
sub

#Plot using the geom_tile() where the number of observations for class be used as a fill for aesthetics.
#a. Show the codes and its result for the narrative in #6.

ggplot(mpg, aes(drv, class)) +
  geom_tile (aes(fill = class)) 
  
#b. Interpret the result.
# The result shows that if there is a relationship between a class and drv, a tile was created.

#7. Discuss the difference between these codes. Its outputs for each are shown below.
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, colour = "blue"))
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy), colour = "blue")

# In the first code, the "colour = blue" code was inside the function aes(), so it failed 
# to give a color blue dots or points. on the other hand, the second code was executed and 
# was in its proper place or outside the aes() function,and in result the plot was shown accordingly.

#8. Try to run the command ?mpg. What is the result of this command?
?mpg
#a. Which variables from mpg data set are categorical?
#Categorical variables in mpg include: manufacturer, model, trans (type of transmission), 
#drv (front-wheel drive, rear-wheel, 4wd), fi (fuel type), and class (type of car).

#b. Which are continuous variables?
#Continuous variables in mpg include: displ (engine displacement in litres), cyl 
#(number of cylinders), cty (city miles/gallon), and hwy (highway gallons/mile)

#c. Plot the relationship between displ (engine displacement) and hwy(highway miles
# per gallon). Mapped it with a continuous variable you have identified in 
#5-b. What is its result? Why it produced such output?

ggplot( data = mpg) +
   geom_point(mapping = aes(x = displ , y = hwy, col = displ)) 
  

#9. Plot the relationship between displ (engine displacement) and hwy(highway miles
# per gallon) using geom_point(). Add a trend line over the existing plot using
#  geom_smooth() with se = FALSE. Default method is “loess”.
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping=aes(color=displ)) +
  geom_smooth(se =FALSE)

#10. Using the relationship of displ and hwy, add a trend line over existing plot. Set the
# se = FALSE to remove the confidence interval and method = lm to check for linear modeling.
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping=aes(color=displ)) +
  geom_smooth(se =FALSE,method = lm)
