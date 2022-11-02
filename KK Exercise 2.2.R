# Course:DSC640
# Name:Kiran Komati
# Exercise 2.2
# 09/17/2022


# Set Directory path
setwd("C:\\Users\\kiran\\Desktop\\Bellevue\\Term 6\\DSC 640 Data Presentation & Visualization\\") 

# Load libraries
library(readxl)
library(ggplot2)

# Prevent scientific notation
options(scipen=999)

wpDF <- read_excel("ex2-2\\world-population.xlsm")

wpDF

# Plot Line chart
plt1 <- ggplot(wpDF, aes(x=Year, y=Population)) +
        geom_line() +
        geom_point() +
        labs(title="Year Vs Population(Line Chart)")
plt1

plt2 <- ggplot(wpDF, aes(x=Year, y=Population)) + 
        geom_step() +
        labs(title="Year Vs Population(Step Chart)")
 
plt2


