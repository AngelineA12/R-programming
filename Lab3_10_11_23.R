setwd("D:/Inferential Statistics")
dt = read.csv('data.csv')
print(dt)
names(dt)

#converting the data set to dataframe
Data = data.frame(dt)
Data

#Storing height and weight in a seperate variable
height = Data$height
weight = Data$weight

#Point Estimation
#HEIGHT
height = Data$height
popmean_h = mean(height)
print(popmean_h)
popsd_h = sd(height)
print(popsd_h)
x1_h = sample(height,10)
x1mean_h = mean(x1_h)
print(x1mean_h)
x2_h = sample(height,10)
x2mean_h = mean(x2_h)
print(x2mean_h)
x3_h = sample(height,10)
x3mean_h = mean(x3_h)
print(x3mean_h)
x4_h = sample(height,10)
x4mean_h = mean(x4_h)
print(x4mean_h)
x5_h = sample(height,10)
x5mean_h = mean(x5_h)
print(x5mean_h)
samplemean_h = mean(x1mean_h,x2mean_h,x3mean_h,x4mean_h,x5mean_h)
print(samplemean_h)
sd_h = c(x1mean_h,x2mean_h,x3mean_h,x4mean_h,x5mean_h)
samplesd_h = sd(sd_h)
print(samplesd_h)
se_h = samplesd_h/sqrt(5)
se_h

#WEIGHT
weight = Data$weight
popmean_w = mean(weight)
print(popmean_w)
popsd_w = sd(weight)
print(popsd_w)
x1_w = sample(weight,10)
x1mean_w = mean(x1_w)
print(x1mean_w)
x2_w = sample(weight,10)
x2mean_w = mean(x2_w)
print(x2mean_w)
x3_w = sample(weight,10)
x3mean_w = mean(x3_w)
print(x3mean_w)
x4_w = sample(weight,10)
x4mean_w = mean(x4_w)
print(x4mean_w)
x5_w = sample(weight,10)
x5mean_w = mean(x5_w)
print(x5mean_w)
samplemean_w = mean(x1mean_w,x2mean_w,x3mean_w,x4mean_w,x5mean_w)
print(samplemean_w)
sd_w = c(x1mean_w,x2mean_w,x3mean_w,x4mean_w,x5mean_w)
samplesd_w = sd(sd_w)
print(samplesd_w)
se_w = samplesd_w/sqrt(5)
se_w

#Point Estimation
#Height
data_mean_h = mean(height)
data_mean_h
data_sd_h = sd(height)
data_sd_h
data_se_h = data_sd_h/sqrt(45)
data_se_h
LCL_h = data_mean_h - 1.645 * data_se_h
LCL_h
UCL_h = data_mean_h + 1.645 * data_se_h
UCL_h
cat("The interval estimation is given by:")
cat(LCL_h,"<= mu <=",UCL_h)

#Weight
data_mean_w = mean(weight)
data_mean_w
data_sd_w = sd(weight)
data_sd_w
data_se_w = data_sd_w/sqrt(45)
data_se_w
LCL_w = data_mean_w - 1.645 * data_se_w
LCL_w
UCL_w = data_mean_w + 1.645 * data_se_w
UCL_w
cat("The interval estimation is given by:")
cat(LCL_w,"<= mu <=",UCL_w)

x.v = seq(-4,4,length = 1000)
y.v = dnorm(x.v)
plot(x.v,y.v,type = "1", xlab = "")