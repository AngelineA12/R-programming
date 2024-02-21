# Set seed for reproducibility
set.seed(42)

# True parameter value for lambda
true_lambda <- 3.5

# Simulate a Poisson random variable with the true lambda
data <- rpois(1000, true_lambda)

# Maximum Likelihood Estimation (MLE)
lambda_mle <- mean(data)
cat('MLE estimate of lambda:', lambda_mle, '\n')

# Method of Moments (MoM)
lambda_mom <- mean(data)
cat('MoM estimate of lambda:', lambda_mom, '\n')



# Load necessary libraries
library(moments)

# Skewness and Kurtosis
skewness_value <- skewness(data)
kurtosis_value <- kurtosis(data)

cat('Skewness:', skewness_value, '\n')
cat('Kurtosis:', kurtosis_value, '\n')
# Plot skewness
barplot(skewness_value, main = 'Skewness', col = 'lightblue', ylim = c(-2, 2))

# Plot kurtosis
barplot(kurtosis_value, main = 'Kurtosis', col = 'lightgreen', ylim = c(-2, 5))

# Plot the histogram of the simulated data
hist(data, breaks = seq(0, max(data) + 1) - 0.5, col = 'lightblue',
     main = 'Simulated Poisson Distribution',
     xlab = 'Number of Events (k)', ylab = 'Probability')
lines(density(data), col = "red", lwd = 2)

# Probability Density Function (PDF)
lambda_mle <- mean(data)
x <- seq(0, max(data))
pdf_values <- dpois(x, lambda_mle)

# Plot the PMF
plot(x, pdf_values, type = 'b', pch = 16, col = 'red', main = 'Probability Mass Function (PMF)',
     xlab = 'Number of Events (k)', ylab = 'Probability')

# Cumulative Distribution Function (CDF)
lambda_mle <- mean(data)
x <- seq(0, max(data))
cdf_values <- ppois(x, lambda_mle)

# Plot the CDF
plot(x, cdf_values, type = 'b', pch = 16, col = 'blue',
     main = 'Cumulative Distribution Function (CDF)',
     xlab = 'Number of Events (k)', ylab = 'Probability')


# Check unbiasedness
bias_mle <- lambda_mle - true_lambda
bias_mom <- lambda_mom - true_lambda

cat('Bias (MLE):', bias_mle, '\n')
cat('Bias (MoM):', bias_mom, '\n')

# Check consistency
sample_sizes <- c(50, 100, 500, 1000)
for (n in sample_sizes) {
  subset_data <- sample(data, n)
  
  lambda_mle_n <- mean(subset_data)
  lambda_mom_n <- mean(subset_data)
  
  cat('Sample Size:', n, '\n')
  cat('  MLE Estimate:', lambda_mle_n, '\n')
  cat('  MoM Estimate:', lambda_mom_n, '\n')
}

# Check efficiency (variance)
variance_mle <- var(data) / length(data)
variance_mom <- var(data) / length(data)

cat('Variance (MLE):', variance_mle, '\n')
cat('Variance (MoM):', variance_mom, '\n')



# Calculate Mean Square Error (MSE)
mse_mle <- var(data) / length(data) + bias_mle^2
mse_mom <- var(data) / length(data) + bias_mom^2

cat('Mean Square Error (MLE):', mse_mle, '\n')
cat('Mean Square Error (MoM):', mse_mom, '\n')



# Varying sample sizes
sample_sizes <- c(50, 100, 500, 1000, 5000, 10000)

for (n in sample_sizes) {
  subset_data <- sample(data, n)
  
  # Maximum Likelihood Estimation (MLE)
  lambda_mle_n <- mean(subset_data)
  bias_mle_n <- lambda_mle_n - true_lambda
  mse_mle_n <- var(subset_data) / length(subset_data) + bias_mle_n^2
  
  # Method of Moments (MoM)
  lambda_mom_n <- mean(subset_data)
  bias_mom_n <- lambda_mom_n - true_lambda
  mse_mom_n <- var(subset_data) / length(subset_data) + bias_mom_n^2
  
  cat('\nSample Size:', n, '\n')
  cat('  MLE MSE:', mse_mle_n, '\n')
  cat('  MoM MSE:', mse_mom_n, '\n')
}

