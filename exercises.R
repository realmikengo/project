#Exercise 1: Upload some libraries
install.packages("tidyverse")
install.packages("lubridate")
install.packages("tidyquant")
install.packages("readxl")
install.packages("writexl")
install.packages("dplyr")
install.packages("ggplot2")
install.packages("patchwork")

#Exercise 2: Import data files

#Exercise 3: Based on bikes.xlsx, show "model" and "price" column with "price" in descending order
bikes <- read_excel("bikes.xlsx")
library(dplyr)
bikes <- bikes %>% select(model, price)
bikes %>% arrange(desc(price))
#Besides that, I try to test data visualization via ggplot2 and patchwork package
library(ggplot2)
library(patchwork)
p <- ggplot(data = bikes, aes(x = model, y = price, fill = model))
p <- p+geom_bar(stat = "identity")
p
#Exercise 4: Based on bikes.xlsx, show "model" and "price" column with "price" greater than mean value of price
bikes %>% filter(price > mean(price, na.rm=TRUE))
#Exercise 5: Use distinct() function to find unique values of category_1 in bike_orderlines data
bike_orderlines <- read_excel("bike_orderlines.xlsx")
str(bike_orderlines)
distinct(bike_orderlines, category_1)
