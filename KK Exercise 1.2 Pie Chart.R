# Course:DSC640
# Name:Kiran Komati
# Exercise 1.2
# 09/09/2022


# Set Directory path
setwd("C:\\Users\\kiran\\Desktop\\Bellevue\\Term 6\\DSC 640 Data Presentation & Visualization\\") 

# Load libraries
library(readxl)
#library(ggplot2)


hotdogDF <- read_excel("ex1-2\\hotdog-contest-winners.xlsm")

hotdogDF

mytable <- table(hotdogDF$Country, dnn = list("Country"))
lbls <- paste(names(mytable), "\n", mytable, sep="")

mytable

pie(mytable, labels = lbls, main = "Hotdog Eating Competition(Wins by Country)")
