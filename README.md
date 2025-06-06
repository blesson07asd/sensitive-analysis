Sensitive  Analysis

Climate Data Sensitivity  Analysis
This project performs a sensitivity analysis on daily climate data from Delhi, specifically focusing on the relationship between mean temperature and various climatic factors. It uses a linear regression model to predict the mean temperature based on humidity, wind speed, and atmospheric pressure, and applies Sobol sensitivity analysis to assess the impact of these factors on the temperature predictions.

Key Features:
Data Cleaning: Missing values are handled, and the cleaned dataset is saved for further analysis.

Linear Regression: A linear regression model is fitted to predict the mean temperature based on humidity, wind speed, and mean atmospheric pressure.

Sobol Sensitivity Analysis: Sobol indices (first-order and total-order) are computed to determine how each factor influences the model's output.

Visualization: Results of the Sobol analysis are visualized using bar plots, and the relationship between humidity and mean temperature is also explored through scatter plots.

Requirements:
dplyr - For data manipulation

 
sensitivity - For Sobol sensitivity analysis
 
randtoolbox  - For generating Sobol sequences

ggplot2 - For data visualization

Files:
DailyDelhiClimateTest.csv: The raw daily climate data (not included in the repository).

data_clean.csv: The cleaned dataset (generated by the code).

sobol_analysis.R: The R script containing the code for the data cleaning, linear regression, Sobol analysis, and visualization.

How to Run:
Clone the repository to your local machine.

Install required R packages if not already installed.

Run the all the R script to perform the analysis.
