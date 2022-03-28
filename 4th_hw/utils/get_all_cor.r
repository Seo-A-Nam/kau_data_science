library(psych)
# This is a code that gets correlation coefficient value between 'attrition' and all the other attributes.
# For that, we convert all the factor/nominal elements to integer(1 ~ )

df <- read.csv("/Users/namseoa/Desktop/kau_data+science/hw/4th_hw/WA_Fn-UseC_-HR-Employee-Attrition.csv")
names(df)[1] = c("Age")

# Convert all non-numertic variables to numeric
df[sapply(df, is.factor)] <- data.matrix(df[sapply(df, is.factor)])
df[sapply(df, is.character)] <- data.matrix(df[sapply(df, is.character)])

# Get correlation coef between 'attrition' and all the other attributes
cr <- cor(df$Attrition, df[-df$Attrition])
print(cr)

# reference
# https://www.statology.org/convert-categorical-variable-to-numeric-r/