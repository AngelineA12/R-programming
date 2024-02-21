#To generate the numbers using sample
random_numbers = sample(4:700,169,replace=TRUE)
random_numbers

#To generate the numbers in integers
runif(10)

#Setting the set value to get the same random numbers
set.seed(7)
#Generating the random integers numbers
ran_num <- sample.int(850,169)
ran_num

ran_mean = mean(ran_num)
ran_mean
ran_sd = sd(ran_num)
ran_sd
ran_se = ran_sd/sqrt(169)
ran_se
LCL = ran_mean - 1.645 * ran_se
LCL
UCL = ran_mean + 1.645 * ran_se
UCL
cat("The interval estimation is given by:")
cat(LCL,"<= mu <=",UCL)