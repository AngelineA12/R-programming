machineA = c(4,5,8,2,6)
machineB = c(8,10,9,12,6)
machineC = c(11,13,17,13,11)

dep = c(machineA,machineB,machineC)
dep

machineA1 = rep('machineA',length(machineA))
machineA1
machineA2 = rep('machineB',length(machineB))
machineA2
machineA3 = rep('machineC',length(machineC))
machineA3

ind = c(machineA1,machineA2,machineA3)
ind
t1 = factor(ind)
t1

machine_anova = aov(dep~ind)
machine_anova
summary(machine_anova)

#2
machineA = c(9,11,13,9,8)
machineB = c(13,12,10,15,5)
machineC = c(14,13,17,7,9)

dep = c(machineA,machineB,machineC)
dep

machineA1 = rep('machineA',length(machineA))
machineA1
machineA2 = rep('machineB',length(machineB))
machineA2
machineA3 = rep('machineC',length(machineC))
machineA3

ind = c(machineA1,machineA2,machineA3)
ind
t1 = factor(ind)
t1

machine_anova = aov(dep~ind)
machine_anova
summary(machine_anova)
