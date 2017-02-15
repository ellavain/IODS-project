



hd <- read.csv("http://s3.amazonaws.com/assets.datacamp.com/production/course_2218/datasets/human_development.csv", stringsAsFactors = F)



gii <- read.csv("http://s3.amazonaws.com/assets.datacamp.com/production/course_2218/datasets/gender_inequality.csv", stringsAsFactors = F, na.strings = "..")


str(hd)
dim(hd)


str(gii)
dim(gii)


summary(hd)
summary(gii)


hd$HumanHDI <- hd$Human.Development.Index..HDI.
hd$LEAB<- hd$Life.Expectancy.at.Birth
hd$EYOE<- hd$Expected.Years.of.Education
hd$meanEYOE<-hd$Mean.Years.of.Education
hd$GNI<-hd$Gross.National.Income..GNI..per.Capita
hd$GNIHDI <-hd$GNI.per.Capita.Rank.Minus.HDI.Rank
hd$HDI.Rank
hd$Country


gii$GII.Rank
gii$Country
gii$GenderGII <-gii$Gender.Inequality.Index..GII.
gii$MaMo<- gii$Maternal.Mortality.Ratio
gii$adolBR<-gii$Adolescent.Birth.Rate
gii$PRiP<-gii$Percent.Representation.in.Parliament
gii$Popsecedufem<-gii$Population.with.Secondary.Education..Female.
gii$Popsecedumale<-gii$Population.with.Secondary.Education..Male.
gii$Labourfem<-gii$Labour.Force.Participation.Rate..Female.
gii$Labourmale<-gii$Labour.Force.Participation.Rate..Male.


library(dplyr); library(ggplot2)



gii <- mutate(gii, secondary_edu = gii$Popsecedufem / gii$Popsecedumale)

gii <- mutate(gii, labour_force = gii$Labourfem / gii$Labourmale)








