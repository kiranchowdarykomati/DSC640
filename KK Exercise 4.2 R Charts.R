# Course:DSC640
# Name:Kiran Komati
# Exercise 4.2
# 10/18/2022


# Set Directory path
setwd("C:\\Users\\kiran\\Desktop\\Bellevue\\Term 6\\DSC 640 Data Presentation & Visualization\\ex4-2") 

# Load libraries
library(ggplot2)

# Set color
color = "#4f3674"

# Remove Scientific Notation
options(scipen = 100)

# Load  data
crimerate_DF <- read.csv("crimerates-by-state-2005.csv")
birthrate_DF <- read.csv("birth-rate.csv")

# Remove United States as it is a Country
crimerate_DF <- crimerate_DF[crimerate_DF$state != "United States",]


# Scatter Plot
ggplot(crimerate_DF, aes(x=murder, y=burglary)) +
    geom_point(col=color) +
    theme_gray() +
    labs(x="murders", y="burglaries") +
    ggtitle("murders vs burglaries in the US(Scatter Plot)")


# Bubble Chart
ggplot(crimerate_DF, aes(x=murder, y=burglary, size=population)) +
    geom_point(alpha=0.5, col=color) +
    scale_size(range=c(0.1,24), name="Population Size") +
    theme_gray() +
    labs(x="Murders", y="Burglaries") +
    ggtitle("murders vs burglaries in the US(Bubble Chart)")

# Density plot
ggplot(birthrate_DF, aes(x=X1980)) +
    geom_density(fill=color, color=color, alpha=0.8) +
    xlim(0,65) +
    theme_gray() +
    labs(x="Births per 1000 Persons", y="Density") +
    ggtitle("World Distribution of Birth Rates in 1980")

