



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

features_data_set$Date <- as.Date(features_data_set$Date, format = "%d/%m/%y")
sales_data_set$Date <- as.Date(sales_data_set$Date, format = "%d/%m/%y")





