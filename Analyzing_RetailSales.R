library(lubridate)
library(ggplot2)
library(tidyverse)


# Data Loading 
features_data_set <- read.csv2("Features data set.csv", header = TRUE, sep = ",")
sales_data_set <- read.csv2("sales data-set.csv", header = TRUE, sep = ",")
stores_data_set <- read.csv2("stores data-set.csv", header = TRUE, sep = ",")


# Summarize and checking data
str(features_data_set)
str(sales_data_set)
str(stores_data_set)

summary(features_data_set)
summary(sales_data_set)
summary(stores_data_set)

head(features_data_set, n =2)
head(sales_data_set, n =2)
head(stores_data_set, n = 2)

# Data type converting

features_data_set$Year <- substr(features_data_set$Date, 7, 10)
features_data_set$Month <- substr(features_data_set$Date, 4, 5)
features_data_set$Day <- substr(features_data_set$Date, 1, 2)

sales_data_set$Year <- substr(sales_data_set$Date, 7, 10)
sales_data_set$Month <- substr(sales_data_set$Date, 4, 5)
sales_data_set$Day <- substr(sales_data_set$Date, 1, 2)

sales_data_set$Month <- as.factor(sales_data_set$Month)
sales_data_set$Year <- as.factor(sales_data_set$Year)
sales_data_set$Day <- as.factor(sales_data_set$Day)


# head(sales_data_set, n =2)




sales_data_set$Weekly_SalesC <- as.character(sales_data_set$Weekly_Sales)
sales_data_set$Weekly_SalesC <- as.numeric(sales_data_set$Weekly_SalesC,2)


sales_data_set %>% distinct(Store)

# head(sales_data_set, n =2)


YearSales <- sales_data_set %>% group_by(Year) %>% summarise(YearSales = sum(Weekly_SalesC))

sales_data_set %>% summarise(MeanSale = mean(Weekly_SalesC))

ggplot(YearSales, aes(Year, YearSales)) +
  geom_col()

