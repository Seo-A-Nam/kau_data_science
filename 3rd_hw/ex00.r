### DEA of Data

## Install & Load Library
install.packages("psych")
library(psych)

# Read file
data <- read.csv(file = 
	"/Users/namseoa/goinfre/3rd_week_R/weight-height.csv")

## Overall plot
plot(data)

## Subsetting by gender
female <- data[data$Gender=="Female", ]
male <- data[data$Gender=="Male", ]

## Get mean and standard-deviation value (남녀 각 전체 평균치와 표준편차)
describe(data) # count, mean, standard-deviation, , median-absolute-deviation, min, max, range, skewness, kurtosis, standard error
# 개수, 평균, 표준편차, 중위수절대편차, 최소, 최대, 범위, 왜도, 첨도,  표준오차
describeBy(data, data$Gender) # seperate groups
describe(male) # male deviation
describe(female) # female deviation

## Overall correlation coefficient of each gender (남녀 전체 상관계수)
cov(data$Height, data$Weight) # 공분산
cor(data$Height, data$Weight, method = 'pearson') # 상관계수 (공분산의 표준화)
cor(male$Height, male$Weight, method = 'pearson') # 남자 상관계수
cor(female$Height, female$Weight, method = 'pearson') # 여자 상관계수

# print(cor()) or print(describe()) <- execute this line to see output results in VScode

