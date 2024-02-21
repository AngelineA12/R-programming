rexp(50,2)
rnorm(100,0,1)
n=100;y=c();
for(i in 1:n)
{
  lm=0.5
  u[i]=runif(1,0,1)
  x[i]=(-1/lm)*log(1-u[i]);x
  y[i]=x[i]
}
y


n <- 100
y <- numeric(n)
lm <- 0.5

for (i in 1:n) {
  u <- runif(1, 0, 1)
  x <- (-1 / lm) * log(1 - u)
  y[i] <- x
}
y

data <- y

log_likelihood <- function(parameters, data) {
  mu <- parameters[1]
  sigma <- parameters[2]
  
  if (sigma <= 0) {
    return(Inf)
  }
  
  log_likelihood_values <- dnorm(data, mean = mu, sd = sigma, log = TRUE)
  
  return(-sum(log_likelihood_values))
}

initial_params <- c(mean(data), sd(data))

result <- optim(par = initial_params, fn = log_likelihood, data = data, method = "L-BFGS-B")

mle_mu <- result$par[1]
mle_sigma <- result$par[2]

mle_mu
mle_sigma