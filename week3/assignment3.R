install.packages("psych") # 패키지 설치
install.packages("ggplot2")
library(psych) # 패키지 로드
library(ggplot2)

# csv 파일 로드
data <- read.csv("C:/Users/pha-r/Desktop/Subject/데이터사이언스기초/3주차/3주차과제/weight-height.csv")

View(data) # 데이터 확인
str(data) # 데이터 구조 확인
colSums(is.na(data)) # 결측치 열별 확인
summary(data) # 최소, 1분위수, 중앙, 평균, 3분위수, 최대

names(data) <- c("Gender", "Weight", "Height") # 키와 몸무게의 열 이름 교체
summary(data) # 바뀐 열 이름과 기술통계 확인

male <- subset(data, Gender == "Male") # 데이터 분리 - 남자
female <- subset(data, Gender == "Female") # 데이터 분리 - 여자
View(male) # 데이터 확인
View(female)

##################################################################################################

summary(data) # 최소, 1분위수, 중앙, 평균, 3분위수, 최대
summary(male)
summary(female)

describe(data) # 개수, 평균, 표준편차, 중위수절대편차, 최소, 최대, 범위, 왜도, 첨도,  표준오차
describeBy(data, data$Gender) # 그룹 분리
describe(male)
describe(female)

cov(data$Height, data$Weight) # 공분산
cor(data$Height, data$Weight, method = 'pearson') # 상관계수 (공분산의 표준화)
cor(male$Height, male$Weight, method = 'pearson')
cor(female$Height, female$Weight, method = 'pearson')

plot(data) # 산점도 행렬
boxplot(data$Height) # 키 상자수염 그래프
boxplot(data$Weight) # 몸무게 상자수염 그래프

##################################################################################################
### 키 ###

## Create plot (Height plot)
hplot <- ggplot(data, aes(x=Height, fill=Gender, color=Gender)) + geom_histogram(
  alpha=0.5, position="identity", bins=30) + geom_vline(xintercept = 162.5)

hplot

# 키 기반 분류 모델
his_h_model <- function(d) {
  res = vector()
  
  for (i in 1:10000) {
    if (d$Height[i] >= 162.5) {
      res = c(res, "Male")
    }
    else {
      res = c(res, "Female")
    }
  }
  
  return (res)
}

# 데이터와 키 기반 예측결과 비교
his_h_model_error <- function(d) {
  res = vector()
  
  for (i in 1:10000) {
    if (d[i] == data$Gender[i]) {
      res = c(res, TRUE)
    }
    else {
      res = c(res, FALSE)
    }
  }
  
  return (res)
}

his_h_res = his_h_model(data) # 키 기반 모델 적용
his_h_error = his_h_model_error(his_h_res) # 데이터와 키 기반 예측결과 비교
sum(his_h_error) # 키 기반 예측 성공의 수
(10000 - sum(his_h_error))/10000 # 키 기반 모델 오류율

### 몸무게 ###

## Create plot (Weight plot)
wplot <- ggplot(data, aes(x=Weight, fill=Gender, color=Gender)) + geom_histogram(
  alpha=0.5, position="identity", bins=30) + geom_vline(xintercept = 66.5)

wplot

#몸무게 기반 분류 모델
his_w_model <- function(d) {
  res = vector()
  
  for (i in 1:10000) {
    if (d$Weight[i] >= 66.5) {
      res = c(res, "Male")
    }
    else {
      res = c(res, "Female")
    }
  }
  
  return (res)
}

#데이터와 몸무게 기반 예측결과 비교
his_w_model_error <- function(d) {
  res = vector()
  
  for (i in 1:10000) {
    if (d[i] == data$Gender[i]) {
      res = c(res, TRUE)
    }
    else {
      res = c(res, FALSE)
    }
  }
  
  return (res)
}

his_w_res = his_w_model(data) # 몸무게 기반 모델 적용
his_w_error = his_w_model_error(his_w_res) # 데이터와 몸무게 기반 예측결과 비교
sum(his_w_error) # 몸무게 기반 예측 성공의 수
(10000 - sum(his_w_error)) / 10000 # 몸무게 기반 모델 오류율

##################################################################################################
### 산점도 (x축 = 키, y축 = 몸무게) ###
ggplot() + geom_point(aes(x = data$Height, y = data$Weight, color = data$Gender)) + geom_abline(
  intercept = -100, slope = 1, col = "yellow", lty = "dashed", size = 3)

# y절편 -100, 기울기 1을 기준으로 분류하는 모델
sc_model <- function(d) {
  res = vector()
  
  for (i in 1:10000) {
    if (d$Height[i] >= d$Weight[i] + 100) {
      res = c(res, "Male")
    }
    else {
      res = c(res, "Female")
    }
  }
  
  return (res)
}

# 데이터와 직선 결정 경계로 예측한 결과를 비교
sc_model_error <- function(d) {
  res = vector()
  
  for (i in 1:10000) {
    if (d[i] == data$Gender[i]) {
      res = c(res, TRUE)
    }
    else {
      res = c(res, FALSE)
    }
  }
  
  return (res)
}

sc_res = sc_model(data) # 직선 기반 모델 적용
sc_error = sc_model_error(sc_res) # 데이터와 직선 기반 예측결과 비교
sum(sc_error) # 직선 기반 예측 성공의 수
(10000 - sum(sc_error)) / 10000 # 직선 기반 모델 오류율
