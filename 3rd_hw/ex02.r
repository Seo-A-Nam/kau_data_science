# Make scatter plot of 2 class in 1 plot.
# 1. display each point of the class in different color
# 2. choose your lines of decision boundary and draw.
# 3. why did you choose that line? -- 
# plot scatter graph of height-weight and represent each gender in different color

## Install & Load Library
install.packages("ggplot2")
library(ggplot2)

# read file dataset
df <- read.csv(file = 
	"/Users/namseoa/goinfre/3rd_week_R/weight-height.csv")

female <- df[df$Gender=="Female", ]
male <- df[df$Gender=="Male", ]

## Create plot
splot <- ggplot(df, aes(Height, Weight, colour=Gender)) + geom_point(size=0.1, alpha=1)	
splot <- splot + geom_abline(intercept = -100, slope=1, color="black", size=0.5)
	# decision boundary - 직선결정경계 (직접 임의로 그은 직선)
	# 식 euqation : Height(y) = Weight(x) * 1 - 100

# Error rate (of classification)
m_error <- nrow(male[male$Weight > (male$Height -100), ])
f_error <- nrow(female[female$Weight < (female$Height -100), ])
error_rate <- ((m_error + f_error) / nrow(df))
cat("The error rate :\n", error_rate, "\n")

# print(splot) <- to watch plots in VScode, execute this line.

# reference
# https://stackoverflow.com/questions/6919025/how-to-assign-colors-to-categorical-variables-in-ggplot2-that-have-stable-mappin
# http://www.sthda.com/english/wiki/ggplot2-add-straight-lines-to-a-plot-horizontal-vertical-and-regression-lines
# https://ggplot2.tidyverse.org/reference/geom_point.html