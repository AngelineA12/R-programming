rm(list=ls())
a = c(55,49,42,21,52)
b = c(61,112,30,89,63)
c = c(42,97,81,95,92)
d = c(169,137,169,85,154)
w = c(a,b,c,d)
w
length(w)
a1 = rep("a",length(a))
b1 = rep("b",length(b))
c1 = rep("c",length(c))
d1 = rep("d",length(d))
t = c(a1,b1,c1,d1)
t = factor(t)
t
anova = aov(w~t)
summary(anova)
boxplot(w~t)

#Post-hoc tests/ Multiple comaprison Analysis
pairwise.t.test(w,t)

#TurkeyHSD
TukeyHSD(anova,conf.level = 0.95)


library(DescTools)
ScheffeTest(anova)

