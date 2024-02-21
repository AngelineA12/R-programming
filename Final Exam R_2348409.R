#6

# Given values
mean1 <- 1660
mean2 <- 1690
sd1 <- 110
sd2 <- 94
n1 <- 100
n2 <- 120

mean <- abs(mean1 - mean2)
mean

(sigmacapsquare = ((n1*sd1)+(n2*sd2))/(n1+n2))
(dn <- sigmacapsquare * ((1/n1)+(1/n2)))
(dn1 <- sqrt(sigmacapsquare))

z <- mean/dn1
z

# Given data
n1 <- 100
n2 <- 120
mean1 <- 1660
mean2 <- 1690
sd1 <- 110
sd2 <- 94

# Two-sample t-test assuming unequal variances
t_stat <- t.test(x = rnorm(n1, mean1, sd1),
                 y = rnorm(n2, mean2, sd2),
                 alternative = "two.sided",  # Change to "less" or "greater" for one-sided test
                 var.equal = FALSE,
                 conf.level = 0.99)  # 99% confidence level

# Print the results
print(t_stat)



#7
# Errors and lines for Ram
errors_ram <- 250
lines_ram <- 1000

# Errors and lines for Rahim
errors_rahim <- 300
lines_rahim <- 800

# Calculate error rates for Ram and Rahim
error_rate_ram <- errors_ram / lines_ram
error_rate_rahim <- errors_rahim / lines_rahim

# Perform a two-sample right-tailed test for equality of proportions
result <- prop.test(c(errors_ram, errors_rahim), c(lines_ram, lines_rahim), alternative = "greater")

# Print the result
print(result)

#8
x <- matrix(c(38,135,129,32,68,43,13,25,17),ncol = 3, byrow = TRUE)
colnames(x) <- c('Slow','Average','Fast')
rownames(x) <- c('Very Well Dressed','Well Dressed','Poorly Dressed')
x
chisq.test(x)


#9 
classA = c(4,5,8,2,6)
classB = c(8,10,9,12,6)
classC = c(11,13,17,13,11)

dep = c(classA,classB,classC)
dep

classA1 = rep('classA',length(classA))
classA1
classA2 = rep('classB',length(classB))
classA2
classA3 = rep('classC',length(classC))
classA3

ind = c(classA1,classA2,classA3)
ind
t1 = factor(ind)
t1

class_anova = aov(dep~ind)
class_anova
summary(class_anova)

