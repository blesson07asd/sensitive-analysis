

lm_model<-lm(meantemp~humidity + wind_speed + meanpressure,data = data_clean) #Fit a linear regression model

# View the summary of the model 
summary(lm_model)

# Define parameter ranges for Sobol sequences
humidity_range <- range(data_clean$humidity)
wind_speed_range <- range(data_clean$wind_speed)
meanpressure_range <- range(data_clean$meanpressure)

#Sobol sequences
sobol_sequence_X1 <- sobol(n=1000, dim = 3, init = TRUE)
sobol_sequence_X2 <- sobol(n=1000, dim = 3, init = FALSE)

# Scale Sobol sequences to the parameter ranges and convert to data frames
lower_bounds <- c(humidity_range[1], wind_speed_range[1], meanpressure_range[1])
upper_bounds <- c(humidity_range[2], wind_speed_range[2], meanpressure_range[2])

X1 <- as.data.frame(t(t(sobol_sequence_X1)*(upper_bounds - lower_bounds)+lower_bounds))
X2 <- as.data.frame(t(t(sobol_sequence_X2)*(upper_bounds - lower_bounds)+lower_bounds))

sobol_model <- function(X) {
 
  predicted_meantemp <- predict(lm_model, newdata = data.frame(humidity = X[, 1], 
                                                                 wind_speed = X[, 2], 
                                                                    meanpressure = X[, 3]))
  return(predicted_meantemp)
}

# Perform Sobol sensitivity analysis
sobol_results <- sobol2007(model = sobol_model,
  X1 = X1,  X2 = X2,
  nboot = 1000
)
# Print sensitivity indices
print(sobol_results)

