x <- matrix(c(99,36,20,5),ncol = 2, byrow = TRUE)
colnames(x) <- c('White','Red')
rownames(x) <- c('FlatB1','FlatB2')
x
chisq.test(x)
