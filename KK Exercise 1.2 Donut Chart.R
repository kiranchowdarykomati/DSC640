# Course:DSC640
# Name:Kiran Komati
# Exercise 1.2
# 09.09.2022


# Set Directory path
setwd("C:\\Users\\kiran\\Desktop\\Bellevue\\Term 6\\DSC 640 Data Presentation & Visualization\\") 

# Load libraries
library(readxl)
library(ggplot2)


hotdogDF <- read_excel('ex1-2\\hotdog-contest-winners.xlsm')
mytable <- table(hotdogDF$Country, dnn = list("Country"))
lbls <- paste(names(mytable), "\n", mytable, sep="")

mytable

# Calculate percentages
wins <- as.data.frame(mytable, responseName = "Wins")

wins$fraction <- wins$Wins / sum(wins$Wins)

# calculate the cumulative percentages
wins$ymax <- cumsum(wins$fraction)

# calculate the bottom of each rectangle
wins$ymin <- c(0, head(wins$ymax, n=-1))

# calculate label position
wins$labelPosition <- (wins$ymax + wins$ymin) / 2
wins

# Plotting
ggplot(wins, aes(ymax=ymax, ymin=ymin, xmax=4, xmin=3, fill=Country)) + 
    geom_rect() + 
    geom_text(x=3.5, aes(y=labelPosition, label=Wins), size=5) +
    coord_polar(theta = 'y') +
    xlim(c(2, 4)) +
    theme_void() +
    ggtitle("Hotdog Eating Competition(Wins by Country)")