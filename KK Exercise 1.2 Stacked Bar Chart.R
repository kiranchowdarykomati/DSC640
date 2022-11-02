# Course:DSC640
# Name:Kiran Komati
# Exercise 1.2
# 09.09.2022


# Set Directory path
setwd("C:\\Users\\kiran\\Desktop\\Bellevue\\Term 6\\DSC 640 Data Presentation & Visualization\\") 

# Load libraries
library(readxl)
library(ggplot2)
# library(tidyverse)
library(reshape2)


OAR <- read_excel('ex1-2\\obama-approval-ratings.xls')
melt_OAR <- melt(OAR)
head(melt_OAR)


# Plot stacked Bar Chart
ggplot(melt_OAR, aes(x=Issue, y=value, fill=variable)) + 
    geom_bar(stat="identity") + coord_flip() + 
    ggtitle("Obama's Approval Ratings by Issue") + 
    labs(y="Percent of Response", x="Political Issue") + 
    labs(fill="Response")