a <- array(c('green','green','red','yellow','blue'))
print(a)
fact <- factor(a)
print(fact)
BMI <- data.frame(gender = c("Male","Male","Female"),
                  height = c(152,171.5,165),
                  weight = c(81,93,78),
                  Age = c(42,38,23))
print(BMI)
print(class(BMI))
var = c(1,1,2,2)
var1 = c(0,1,2,3)
var2 = c(4:7)
var3 = var1 + var2
print(var3)
var4 = var1-var2
print(var4)
print(var1*4)
print(var1>var)
print(var1==var)
print(var1>=var)
print(var1<var)
print(var1<=var)
print(var1&var)
print(var1|var)