"RStudio Exercise 2, data wrangling task 1 "
Ella 
31.1

data <- read.table("C:/Users/Ella Vainio/Documents/GitHub/IODS-project/data/Learning2014-data.txt", sep = "", header = TRUE)
data
str(data)
"The structure of this material, consists of 183 observations and 60 variables, "
"Most of the answer options is mesured in intervalls, except for gender"
"Most of the intervall questions range from 1-5, except for variables; Age, Attittude and Points"
dim(data)
"The dimensions of this data is that it has 60 rows and 183 columns"
*Deep      d_sm + d_ri + d_ue
d_sm <-(data$D03 + data$D11 + data$D19 + data$D27)
d_ri <-(data$D07 + data$D14 + data$D22 + data$D30)
d_ue <-(data$D06 + data$D15 + data$D23 + data$D31)
Deep <-(d_sm + d_ri + d_ue)
"Created the Deep variable"
*VAR Stra:1=st_os+st_tm
st_os <-(data$ST01 + data$ST09 + data$ST17 + data$ST25)
st_tm <-(data$ST04 + data$ST12 + data$ST20 + data$ST28)
Stra <-(st_os + st_tm)
"Created the Stra variable"
+VAR Surf:1=su_lp+su_um+su_sb
su_lp <-(data$SU02 + data$SU10 + data$SU18 + data$SU26)
su_um <-(data$SU05 + data$SU13 + data$SU21 + data$SU29)
su_sb <-(data$SU08 + data$SU16 + data$SU24 + data$SU32)
Surf <-(su_lp + su_um + su_sb)
"Created the Surf variable"

smalldata <-c(data$gender, data$Age, data$Attitude, data$Points, data$Deep, data$Stra, data$Surf)
smalldata <- filter(smalldata Points == 0)
