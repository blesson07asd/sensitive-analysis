library(dplyr)
#library(tidyr)
library(sensitivity)
library(randtoolbox)
data <- read.csv("DailyDelhiClimateTest.csv", stringsAsFactors = FALSE)


data_clean<-data %>% drop_na() #removing rows with missing values

write.csv(data_clean,"data_clean.csv",row.names = FALSE) # Save the cleaned data
head(data_clean)

