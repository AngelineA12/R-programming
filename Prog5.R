AR <- array(data = seq(from = 4.8,to=0.1,length.out =48), dim = c(4,2,6))
AR
AR[c(4,1),2,]
AR[,,-6]
mydata <- data.frame(Person = c("Angeline","Chris","Tina","Karolin","Charles"), Age = c("19","31","19","46","51"),
                     Sex = factor(c("Female","Male","Female","Female","Male")))
mydata
mydata[,c(3,1)]
mydata$Age[<20]
, ol(mydata)
newrecord <- data.frame(Person = "William",Age = "60",Sex = factor("Male"))
mydata <- rbind(mydata,newrecord)
mydata
mydata$Favcolour(c("Blue","Red","Yellow","Brown","Pink","Black"))
mydata[3] = "Male"
new <- mydata[-c(2),-c(3)]
new
dim(mydata)
mydata[Age < 20]
mydata