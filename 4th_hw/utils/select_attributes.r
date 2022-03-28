library(psych)

## Load dataset
data <- read.csv("/Users/namseoa/Desktop/kau_data+science/hw/4th_hw/WA_Fn-UseC_-HR-Employee-Attrition.csv")
names(data)[1] = c("Age")

data$Attrition <- as.integer(data$Attrition == "Yes")
data$Gender <-as.integer(data$Gender == "Male")

customSort <- function(data_mat){
  for(i in 1:length(data_mat)) {
    if(data_mat[i] == "Travel_Rarely") {
      data_mat[i] = 1
    }
    else if (data_mat[i] == "Travel_Frequently") {
      data_mat[i] = 2
    }
    else if (data_mat[i] =="Non-Travel") {
      data_mat[i] = 0
    }
  }
  return(data_mat)
}
data$BusinessTravel <- as.integer(customSort(data$BusinessTravel))

customSort <- function(data_mat){
  for(i in 1:length(data_mat)) {
    if(data_mat[i] == "Sales") {
      data_mat[i] = 0
    }
    else if (data_mat[i] == "Research & Development") {
      data_mat[i] = 1
    }
    else if (data_mat[i] =="Human Resources") {
      data_mat[i] = 2
    }
  }
  return(data_mat)
}
data$Department <- as.integer(customSort(data$Department))

customSort <- function(data_mat){
  for(i in 1:length(data_mat)) {
    if(data_mat[i] == "Life Sciences") {
      data_mat[i] = 0
    }
    else if (data_mat[i] == "Medical") {
      data_mat[i] = 1
    }
    else if (data_mat[i] =="Human Resources") {
      data_mat[i] = 2
    }
    else if (data_mat[i] =="Marketing") {
      data_mat[i] = 3
    }
    else if (data_mat[i] =="Technical Degree") {
      data_mat[i] = 4
    }
    else if (data_mat[i] =="Other") {
      data_mat[i] = 5
    }
  }
  return(data_mat)
}
data$EducationField <- as.integer(customSort(data$EducationField))

customSort <- function(data_mat){
  for(i in 1:length(data_mat)) {
    if(data_mat[i] == "Healthcare Representative") {
      data_mat[i] = 0
    }
    else if (data_mat[i] == "Human Resources") {
      data_mat[i] = 1
    }
    else if (data_mat[i] =="Laboratory Technician") {
      data_mat[i] = 2
    }
    else if (data_mat[i] =="Manager") {
      data_mat[i] = 3
    }
    else if (data_mat[i] =="Manufacturing Director") {
      data_mat[i] = 4
    }
    else if (data_mat[i] =="Research Director") {
      data_mat[i] = 5
    }
    else if (data_mat[i] =="Research Scientist") {
      data_mat[i] = 6
    }
    else if (data_mat[i] =="Sales Executive") {
      data_mat[i] = 7
    }
    else if (data_mat[i] =="Sales Representative") {
      data_mat[i] = 8
    }
  }
  return(data_mat)
}
data$JobRole <- as.integer(customSort(data$JobRole))

customSort <- function(data_mat){
  for(i in 1:length(data_mat)) {
    if(data_mat[i] == "Divorced") {
      data_mat[i] = 0
    }
    else if (data_mat[i] == "Married") {
      data_mat[i] = 1
    }
    else if (data_mat[i] =="Single") {
      data_mat[i] = 2
    }
  }
  return(data_mat)
}
data$MaritalStatus <- as.integer(customSort(data$MaritalStatus))
data$OverTime <- as.integer(data$OverTime == "Yes")
data$Over18 <- as.integer(data$Over18 == "Y")

# 상관계수 구하기. 단 standard hours는 모든 값이 80이라 표준편차가 0이라서 상관계수가 NA가 나온다.

res <- cor(data[, c(1:ncol(data))], use = "all.obs", method = "pearson")
# attrition과 상관계수가 높은 것을 구하되, 그 속성들끼리의 상관계수 또한 고려한다.

## Overall correlation coefficient of each gender (남녀 전체 상관계수)
# cor(data$Height, data$Weight, method = 'pearson') # 상관계수 (공분산의 표준화)

## 각자 1~12, 13~24, 24~끝 각자 분담해서 맡기. 범주형/명목형 변수는 수치형(연속형)으로 바꾸기
## 상관계수가 큰 것 5개를 골라 그걸로 트리에서의 속성을 설정한다.
## 그전에 우리가 속성 가지치기 안하고 트리 만들었을 때 나온 분류속성들도 고려한다.

#install.packages("corrplot")
source("http://www.sthda.com/upload/rquery_cormat.r")
rquery.cormat(data)