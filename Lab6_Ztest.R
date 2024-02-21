data()
(My_Data = AirPassengers)
My_Data
str(AirPassengers)
summary(AirPassengers)

(sample_data = sample(My_Data,100,replace = FALSE))
xbar = mean(sample_data)
mue0 = 250
n = length(sample_data)
sigma = sd(My_Data)
a = sqrt(n)
c = sigma/a
d = xbar-mue0
(Z = d/c)


#left-tailed = TRUE, right-tailed = FALSE, 
#Two-tailed = 2*pnorm(z,mean,sd,lower.tail = FALSE)
(2*pnorm(Z,mean=0,sd=1,lower.tail = FALSE))

data = Nile
Nile
str(Nile)
summary(Nile)
(sample_Nile = sample(data,75,replace = FALSE))
(xbar = mean(sample_Nile))
mue0 = 900 #The average flow of Nile river
n = length(sample_Nile)
sigma = sd(data)
a = sqrt(n)
c = sigma/a
d = xbar-mue0
(Z = d/c)
  