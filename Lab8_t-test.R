#Independent Sample t-Test
setwd("D:/Inferential Statistics")
dt1 = read.csv('single_one sample t-test.csv')
dt1

salary = dt1$Salary..000.

t.test(salary,mu=780)

#Paired Sample t-Test
setwd("D:/Inferential Statistics")
dt_training = read.csv('paired sample training data dependent.csv')
dt_training

before_training = dt_training$Before.Training
after_training = dt_training$After.Training

t.test(after_training,before_training, paired = TRUE)

before = c(120,110,113,121,120,140,139,115,110,114)
after = c(115,108,105,122,117,142,138,110,106,108)
t.test(before,after,paired = TRUE)

before = c(65,35,80,40,50)
after = c(45,15,61,31,20)
t.test(before,after,paired = TRUE,alternative = "less")
