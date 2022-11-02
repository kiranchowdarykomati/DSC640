# Course:DSC640
# Name:Kiran Komati
# Exercise 3.2
# 10/07/2022


# Set Directory path
setwd("C:\\Users\\kiran\\Desktop\\Bellevue\\Term 6\\DSC 640 Data Presentation & Visualization\\") 

# Load libraries
library(readxl)
library(ggplot2)
library(treemapify)
library(treemap)


expenditures <- read.table("ex3-2\\expenditures.txt",sep="\t", header=TRUE)
unemployment <- read_excel("ex3-2\\unemployment2.xlsx")

expenditures_2008 <- expenditures[expenditures["year"]=="2008",]

expenditures_2008

treemap(expenditures,index = c("category", "year"),vSize = "expenditure",type = "index",palette = "Set1",title = "Annual Expenditures by Category",
        fontsize.labels = c(15, 10),   # Label size by level
        fontcolor.labels = c("white", "dark blue"),
        fontface.labels = c(2,1),      # 2: bold, 1: normal
        bg.labels = c("transparent"),  # background color for label
        align.labels = list(c("center", "center"),c("right", "bottom")),
        overlap.labels = 0.5,          # Tolerance level for overlap
        inflate.labels = FALSE, 
        border.col = c("black", "dark gray"), # Colors
        border.lwds = c(3,1)           # Linewidth
)



unemployment$MoYr <- as.Date(unemployment$MoYr, format = "%Y-%m-%d") # Date Format from String

# Plot Area Chart
ggplot(unemployment, aes(x=MoYr, y=Value)) + 
    geom_area(fill="dark blue", alpha=0.5) +
    geom_line(color="white", size=0.5) + 
    theme_minimal() +
    labs(y="Unemployment Level", x="Year") +
    ggtitle("Unemployment Level Over Time") +
    scale_x_date(date_labels="%Y", breaks = "5 years")


# Plot Stacked Area Chart
ggplot(expenditures, aes(x=year, y=expenditure, fill=category)) + 
    geom_area() + 
    theme_minimal() +
    labs(y="Expenditure (in USD)", x="Year") +
    ggtitle("Expenditure in different Categories Over Time")