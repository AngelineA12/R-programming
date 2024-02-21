#Loading the data set into R
setwd("D:/Inferential Statistics/Lab7")
dt = read.csv('Lab7heart.csv')
dt

#Exploring the structure of the data
str(dt)

#Separating the data
Gender = dt$Sex
Cholesterol = dt$Cholesterol

#Converting categorical to numerical data
Gen = ifelse(Gender == 'M','1','0')

#One-Sample test
n = sum(Gen == '1')
x = sum(Gen == '1'& Cholesterol=='300')
prop.test(x,n,p=0.7,alternative="two.sided",conf.level = 0.975)

#Two-Sample test
n1 = sum(Gen == '1')
x1 = sum(Gen == '1'& Cholesterol > '300')
n2 = sum(Gen == '0')
x2 = sum(Gen == '0'& Cholesterol > '300')
prop.test(x=c(x1,x2),n = c(n1,n2))
