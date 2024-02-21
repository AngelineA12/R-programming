setwd("D:/Inferential Statistics")
dt = read.csv('mineprob_21_11_cls.csv')
dt
output = dt$Output.tons.
output
mine1 = head(output,20)
mine1
mine2 = tail(output,24)
mine2


t.test(mine1,mine2,var.equal = FALSE)

setwd("D:/Inferential Statistics")
dt1 = read.csv('single_one sample t-test.csv')
dt1

salary = dt1$Salary..000.

t.test(salary,mu=780)


install.packages("BSDA")
library(BSDA)
data = c(88,92,94,94,96,97,97,99,99,105,109,109,110,112,112,113,114,115)
z.test(data,mu=100,sigma.x=15)
