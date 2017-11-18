
# Library loading 

library(tidyverse)



features_data_set <- read.csv2("Features data set.csv" ,header = TRUE , sep = ",")
sales_data_set <- read.csv2("sales data-set.csv" ,header = TRUE , sep = ",")
stores_data_set <- read.csv2("stores data-set.csv" ,header = TRUE , sep = ",")

# Convert Date co
sales_data_set$Date <- as.Date(sales_data_set$Date, format = "%d/%m/%Y")
features_data_set$Date <- as.Date(features_data_set$Date, format = "%d/%m/%Y")





arrange(features_data_set, desc(Date))
arrange(sales_data_set, desc(Date))

sales_data_set %>% distinct(Date)

str(features_data_set)
str(sales_data_set)
str(stores_data_set)


head(features_data_set, n = 2)
head(sales_data_set, n = 2)
head(stores_data_set, n = 2)


features_data_set %>% filter(MarkDown1 =! )
summary(features_data_set)



features_data_set %>% 
  summarise(min(Date))





