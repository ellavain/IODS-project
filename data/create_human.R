



hd <- read.csv("http://s3.amazonaws.com/assets.datacamp.com/production/course_2218/datasets/human_development.csv", stringsAsFactors = F)



gii <- read.csv("http://s3.amazonaws.com/assets.datacamp.com/production/course_2218/datasets/gender_inequality.csv", stringsAsFactors = F, na.strings = "..")


str(hd)
dim(hd)


str(gii)
dim(gii)


summary(hd)
summary(gii)


hd$HDI <- hd$Human.Development.Index..HDI.
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
gii$secedufem<-gii$Population.with.Secondary.Education..Female.
gii$secedumale<-gii$Population.with.Secondary.Education..Male.
gii$Lfem<-gii$Labour.Force.Participation.Rate..Female.
gii$Lmale<-gii$Labour.Force.Participation.Rate..Male.

gii <- dplyr::select(gii, -c(3:10,15:20))
str(gii)


summary(gii)

-c(3:10,15:20)

library(dplyr); library(ggplot2)



gii <- mutate(gii, secondary_edu = gii$secedufem / gii$secedumale)

gii <- mutate(gii, labour_force = gii$Lfem / gii$Lmale)


str(hd)

hd <- dplyr::select(gii, c(1:16))
-c(3:8)
hd
str(hd)

join_by <- c("")

human <- inner_join(gii, hd, by = "Country", suffix = c(".gii", ".hd"))


summary(human)
