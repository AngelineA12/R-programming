mydata <- data.frame(Person = c("Angeline","Chris","Tina","Karolin","Charles"), Age = c("19","31","19","46","51"),
                     Sex = factor(c("Female","Male","Female","Female","Male")))
mydata
mydata[1:5,c(Sex="Male")]
mydata$Sex["Male"]
mydata[Sex[male]]
name <- c("Angeline","Chris","Tina","Karolin","Charles")
age <- c(19,31,19,46,51)
sex <- c("F","M","F","F","M")
sex.fac <- factor(x = sex)
sex.fac
levels(sex.fac) <- c(1,2)
sex.fac
mydata$Sex=fac1Male
L <- list(Numbers = c(9,7,6,3,4), Matrix = matrix(c(1,1,3,5,7,9),nrow=3))
L
is.recursive(L)
is.atomic(matrix())
is.recursive(array())
a <- list(5,9,8,7,10)
as.numeric(a)
as.list(a)
unlist(a)
x <- c(39,45,24,12,34)
labels <- c("Madurai","Karur","Chennai","Sivagangai","Bangalore")
pie(x,labels,radius = 0.9,main = "Forest Area",col = rainbow(length(x)),clockwise = TRUE)
legend("topright",labels,cex=0.9,lwd = 1.6,fill = rainbow(length(x)))