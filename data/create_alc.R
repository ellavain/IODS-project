title: "week 3"
author: "Ella"
date: "7 helmikuuta 2017"
output: html_document

"student_mat and student_por joining"
library(dplyr)

student_mat <-read.table("student-mat.csv", sep = ";", header = TRUE)
student_por <-read.table("student-por.csv", sep = ";", header = TRUE)

"structure"
str(student_mat)
str(student_por)

"dimensions"
dim(student_mat)
dim(student_por)

"joining the two data sets"

join_by <-c("school","sex","age","address", "famsize","Pstatus","Medu","Fedu","Mjob","Fjob","reason","nursery","internet")
math_por <- inner_join(math, por, by = join_by, suffix = c(".math", ".por"))
"JOKIN ON TÄSSÄ MENNYT VÄÄRIN"

"4. explore dim and str of the new join_by"



"5. The if-else structure, to combine the duplicated answers"

"6. Mutations (datacamp)"


"7. Glipmse at data"


