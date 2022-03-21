# Make histogram based on single variable - use cut-off
# 1. Height based classification model.
# 2. Weight based classification model.
# - which model is better? and why?

## Install & Load Library
install.packages("ggplot2")
library(ggplot2)
install.packages("gridExtra")
library(gridExtra)

## Read file dataset
df <- read.csv(file = 
	"/Users/namseoa/goinfre/3rd_week_R/weight-height.csv")

## Subsetting by gender
female <- df[df$Gender=="Female", ]
male <- df[df$Gender=="Male", ]

## Create plot (Weight plot)
wplot <- ggplot(df, aes(x=Weight, fill=Gender, color=Gender)) + 
	geom_histogram(alpha=0.5, position="identity", bins=30) + 
	geom_vline(xintercept = 66.5) +
	geom_text(x=68, y=100, aes(label=66.5), colour="black")


## Create plot (Height plot)
hplot <- ggplot(df, aes(x=Height, fill=Gender, color=Gender)) + 
	geom_histogram(alpha=0.5, position="identity", bins=30) + 
	geom_vline(xintercept = 162.5, size = 0.5) +
	geom_text(x=175, y=100, aes(label=162.5), colour="black")

## Display 2 plots in side
grid.arrange(wplot, hplot, ncol=1, nrow=2)

### caclulate error rate by cut-off value
error_w_f <- nrow(female[female$Weight > 66.5, ])
error_w_m <- nrow(male[male$Weight < 66.5, ])
error_rate_weight = ((error_w_f + error_w_m) / nrow(df))

error_h_f <- nrow(female[female$Height > 162.5, ])
error_h_m <- nrow(male[male$Height < 162.5, ])
error_rate_height = ((error_h_f + error_h_m) / nrow(df))

cat("error_rate (weight) :", error_rate_weight, "\n")
cat("error_rate (height) :", error_rate_height, "\n") 

# reference
# http://www.sthda.com/english/wiki/ggplot2-histogram-plot-quick-start-guide-r-software-and-data-visualization
# http://www.sthda.com/english/wiki/ggplot2-add-straight-lines-to-a-plot-horizontal-vertical-and-regression-lines
# https://www.r-bloggers.com/2019/08/find-the-intersection-of-overlapping-histograms-in-r-2/
# https://www.datasciencemadesimple.com/delete-or-drop-rows-in-r-with-conditions-2/
# https://stackoverflow.com/questions/18091721/align-geom-text-to-a-geom-vline-in-ggplot2