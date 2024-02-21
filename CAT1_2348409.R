#Q1
data = c(70,120,110,101,88,83,95,98,107,100)
meu = 100
(mean = mean(data))
(sd = sd(data))
t = t.test(data,mu=100)
t


#Q2

#Two-Sample test
n1 = 400
x1 = 200
n2 = 600
x2 = 325
prop.test(x=c(x1,x2),n = c(n1,n2))