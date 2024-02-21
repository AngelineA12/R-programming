setwd("D:/Inferential Statistics")
dt = read.csv('paired sample t-test csv.csv')
dt

pre_score = dt$Pre.module.score
pre_score
post_score = dt$Post.module.score
post_score

t.test(post_score,pre_score,paired = TRUE)

setwd("D:/Inferential Statistics")
dt_training = read.csv('paired sample training data dependent.csv')
dt_training

before_training = dt_training$Before.Training
after_training = dt_taining$After.Training

t.test(after_training,before_training, paired = TRUE)
