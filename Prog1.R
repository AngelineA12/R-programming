
x <- c(1510,1740,1380,1860,1280,1360,1790,1630,1520,1310)
y <- c(6300,8100,5600,9100,4700,5700,7600,7200,6200,4800)
model <- lm(y~x)
model
lm(formula=y~x)
summary(model)
lm(formula=y~x)
expense <- data.frame(x=4700)
income <- predict(model,expense)
income
plot(y,x,col="blue",main="Income and expenditure regression",abline(lm(x~y)),
     cex=1.3,pch=24,xlab="Income in Rs",ylab="Expenditure in Rs")
model2 <- lm(mpg~disp+hp+wt,data=mtcars[,c("mpg","disp","hp","wt")])
model2
lm(formula=mpg~disp+hp+wt,data=mtcars[,c("mpg","disp","hp","wt")])
coef(model2)[1]  
coef(model2)[2]
coef(model2)[3]
coef(model2)[4]
newdata <- data.frame(disp=160,hp=110,wt=2.620)
mileage <- predict(model2, newdata)
mileage
plot(mtcars$mpg,mtcars$disp+mtcars$hp+mtcars$wt,col="blue",main="Mileage Per Gallons and other
     Factor Multiple Regression",abline(lm(mtcars$disp+mtcars$hp+mtcars$wt~mtcars$mpg)),
     cex=1.2,pch=15, xlab = "other Factors(mtcars$disp+mtcars$hp+mtcars$wt",
     ylab="Mileage Per Gallon")
model3 <- glm(am~cyl+hp+wt,data=mtcars[,c("am","cyl","hp","wt")],family=binomial)
model3
glm(formula=am~cyl+hp+wt,data=mtcars[,c("am","cyl","hp","wt")],family=binomial)
summary(model3)
model4 <- glm(breaks~wool+tension,data=warpbreaks,family=poisson)
glm(formula=breaks~wool+tension,data=warpbreaks,family=poisson)
summary(model4)
x <- c(1.6,2.1,2,2.23,3.71,3.25,3.4,3.86,1.19,2.21)
y <- c(5.19,7.43,6.94,8.11,18.75,14.88,16.06,19.12,3.21,7.58)
plot(x,y)
model5<-nls(y~b1*x^2+b2,start=list(b1=1,b2=3))
new <- data.frame(x=seq(min(x),max(x),len=100))
lines(new$x, predict(model5,newdata=new))
res1 <- sum(resid(model5)^2)
res1
res2 <- confint(model5)
res2
plant=lm(PlantGrowth$weight~PlantGrowth$group)
anova(plant)
revenue=c(15,18,22,23,24,22,25,15,15,14,18,22,15,19,21,23,15,14,17,18,
          23,12,26,18,14,12,15,11,10,8,26,12,23,15,18,19,17,15,20,10,
          15,14,18,19,20,14,18,10,12,23,14,22,19,17,11,21,23,11,18,14)
months=gl(12,5)
years=gl(5,1,length(revenue))
fit = aov(revenue~months+years)
anova(fit)
library(MASS)
cardata = table(Cars93$AirBags,Cars93$Type)
chi <- chisq.test(cardata)
chi
prop.test(85,148,p=0.6,alt="less",correct=FALSE)
fivenum(mtcars$cy)
quantile(mtcars$cy)
boxplot(mpg~cyl,data=mtcars)
grid(8,8)
8%/%9
8/9
letters
x <- 1:4
y <- rep(x, each=2)
y
rep(seq(1,10,3),2,each=10)
rep(1:10,length.out=20)
k <- c(6,9,7,3,6,7,9,6,3,6,6,7,1,9,1)
x <- array(1:24,dim=c(3,4,2),
           dimnames = list(c("a","b","c"),c("e","f","g","h"),c("i","j")))
x
length(x)
dim(x)
j <- matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3,byrow = TRUE)
j
sum(diag(j))
a <- data.frame(a=c(1,2,3),b=c(4,6,7),c=c("TRUE","FALSE","C"),row.names =c("A","B","C"))
a
rownames(a)
head(mtcars)
mtcars[3:4]
subset(j,b<7 && c,a)
x <- c("a","b","c","d","e","f")
y <- c(3,4,7,8,12,15)
z <- c(TRUE,TRUE,FALSE,TRUE,FALSE,TRUE)
D <- data.frame(x,y,z)
D
subset(D,y<10&z,x)
ch <- c("Outstanding","Excellent","Very good","Good","Bad")
val <- sample(ch,100,replace=TRUE)
rating <- factor(val,ch)
rating
is.factor(rating)
is.ordered(rating)
rating_ord <- ordered(val,ch)
is.ordered(rating_ord)
rating_ord
age <- c(18,20,31,32,33,35,41,38,45,48,51,27,29,42,39)
age_group <- cut(age,seq.int(15,55,10))
age
age_group
table(age_group)
gl(5,3,10)
fac1 <- gl(5,3,labels=c)
p = c("UG","PG","PG","UG","UG","PG","PG")
q = c(2017,2016,2015,2017,2015,2016,2015)
r = c(1,3,5,2,1,3,4)
x = data.frame(p,q,r)
x
x[["PG"]]
x$p["PG"]
x[p="PG"]
x["PG",]
x[c(2,3,6,7),]
nrow(x)
new =data.frame(p="UG", q = 2013, r = 2)
new_value <-rbind(x,new)
new_value