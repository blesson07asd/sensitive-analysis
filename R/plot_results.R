library(ggplot2)

# Extract Sobol indices from the results
sobol_indices <- data.frame(
  Parameter = c("Humidity", "Wind Speed", "Mean Pressure"),
  First_Order = sobol_results$S[, 1],  # First-order indices
  Total_Order = sobol_results$T[, 1]   # Total-order indices
)

# Reshape the data for plotting
sobol_indices_long <- sobol_indices %>%
  pivot_longer(cols = c(First_Order, Total_Order), 
               names_to = "Index_Type", 
               values_to = "Value")


# Create the bar plot
ggplot(sobol_indices_long, aes(x = Parameter, y = Value, fill = Index_Type)) +
  geom_bar(stat = "identity", position = position_dodge()) +
  labs(
    title = "Sobol Sensitivity Indices",
    x = "Parameter",
    y = "Sobol Index",
    fill = "Index Type"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5, size = 16, face = "bold"),
    axis.title = element_text(size = 14),
    axis.text = element_text(size = 12),
    legend.title = element_text(size = 12),
    legend.text = element_text(size = 10)
  )
# Example scatter plot for humidity vs. mean temperature
ggplot(data_clean, aes(x = humidity, y = meantemp)) +
  geom_point(alpha = 0.5) +
  labs(
    title = "Humidity & Mean Temperature",
    x = "Humidity",
    y = "Mean Temperature"
  ) +
  theme_minimal()

