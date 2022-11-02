
# Course: DSC640
# Name: Kiran Komati
# Exercise 1.2
# 09.09.2022



setwd("C:\\Users\\kiran\\Desktop\\Bellevue\\Term 6\\DSC 640 Data Presentation & Visualization\\") 
library(readxl)
library(ggplot2)
library(tidyverse)
#Read in first file for the bar chart
OAR <- read_excel('ex1-2\\obama-approval-ratings.xls')

#Create bar chart
ggplot(OAR, aes(x=Approve, y=Issue)) +
    geom_bar(stat = "identity", fill = 'steelblue',position = 'dodge')+
    ggtitle("Approval Ratings")+
    theme_minimal()