


data1 <- read.table("data/learning2014.txt" , sep = ",", header = TRUE)
str(data1)


data1
str(data1)
dim(data1)
"There are 7 variables and 166 observations in this data file called data1"
str(data1)
"The variables are gender, age, attitude, deep, stra, surf and points"
"Gender is defined either by 'F' (female = 2) or 'M' (male = 1)"
"Age is a continuous variable, so it is mesured in intervalls"
"Attitude is mesured by the global attitude toward statistics"
"The variable Points are exam points"
"The variables 'deep', 'stra' and 'surf' are combiantions of different questions
regardning a surtain topic"

summary(data1)
"Gave the minimum, 1st Qu, median, mean 3rd Qu and maximum values of all the 7 variables "
plot(data1$gender)
plot(data1$age)
plot(data1$attitude)
plot(data1$deep)
plot(data1$stra)
plot(data1$surf)
plot(data1$points)

table(data1)
table(data1$gender, data1$age, data1$attitude, data1$deep, data1$stra, data1$surf, data1$points)
table(data1$gender)
table(data1$age)
table(data1$points)
table(data1$attitude)
table(data1$deep)
table(data$stra)
table(data$surf)

mean(data1$age)
mean(data1$points)
mean(data1$attitude)
mean(data1$deep)
mean(data1$surf)
'data1$gender, has a distribution of 110 female and 56 male'
'data14$age, ranges from 17 to 55 years old, and the mean age is 25,51..., and 
as we can see from the plot, a majority of the once who answered to this questionnare
are in their 20s'
'data1$points, varies a lot, and the results vary from 0 points to 35 points, but the mean number of points is 22,72...'
'data1$attitude variable is very scattered between value 1.5 and 5 points, the mean value is 3.14...'
'data1$deep variable varies from 1.5 to 5, and most of them are located between 3 and 4.5 and the mean value is 3.68...'
'data1$stra variable is scattered all over the place, there is no trend in how people has answered this question'
'data1$surf variable is distributed between 1.5 and 4.5, but the majority is distributed between 2.5 and 3.5, and the mean value is 2.78...'


model1 <- lm(data1$points ~ data1$attitude + data1$stra + data1$deep, data = data1)
model1
'So i created a multiple regression model called model1, and the data1$points is the target variable, where as data1$attitude, data1$stra and data1$deep are the explanatory variables'
summary(model1)
'Intercept is from where the variable data1$points start on the y-axis when the x-axis is 0'
'If you increase by one data1$attitude, and all the other explanatory variables are constant, the intercept (data1$points) will increase by 3.5354 in the regression model'
'the same thing happends with the explanatory variable data1$stra, when the other explanatory variables are constant, that it increases the intercept by 0.07489 when data1$stra increases by 1'
'on the other hand variable data1$deep, when it increases by one, the intercept will decline by 0,7492, if the other explanatory variables keep constant'

'The only statistically significant explanatory variable is data1$attitude with sigificance on a level of 0,000, the explanatory variable data1$stra could be significant if we would adjust the scale to accept significance up to 0,1'
'Also these 3 variables only explain up to 0,2097 the variation in the target variable data1$points, so we can assume it is decent'

'Because my model had an insignificant variable, i shall remove it (data1$deep)'

model2 <-(lm(data1$points ~ data1$attitude + data1$stra))
model2
'Created a new multiple regression model called model2, where data1$points is the target variable and the explanatory variables are data1$attitude and data1$stra'
summary(model2)
'Now the intercept begins at 8,9729 at the y-axis when the x-axis is 0'
'data1$attitude increases by 1 and the other explanatory variables are constant, then data1$points will increase by 3,4658'
'data1$stra increases by 1 and the other explanatory variables are constant, the intercept will increase by 0,9137'

'data1$atitude is a significant variable with <0,000'
'data1$stra is significant if we define 0,1 as our minimum amount of significance'

'this explanatory variables explains 0,2048 of the variation in the target variable data1$points'

model2 <- lm(points ~ attitude + stra, data = data1)
par(mfrow = c(2,2))
plot(model2, which = c(1,2,5))

plot(model2, which = c(1))


pairs(data1, col = data1$gender)








