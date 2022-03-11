# 1st week assignment : simple prediction model of voter preference

* subject : predict the voter preference using private information of voters.

* use either method of classification or regression
	* -> i chose classification.


## How i made the model

* suggest any pattern of data
	* set more than 3 predictor varibales and 1 target variable (including numeric and norminal)
* create a data(table) in accordance to the pattern
* make prediction model under the pattern using R.
* read the data and apply the model to test it.
* cacluate accuracy of the model using the test result.

## Pattern (made by me)
* person whose income level is "상(top)" will choose B.
* person whose income level is "중(middle)", has job and age is over 40, will choose B.
* person whose income level is "중(middle)", has job, age is over 40 and is male, will choose B.
* person whose income level is "하(bottom)", age is under 40, jobless, age is under 40 and is male, will choose B.
* person who doesn't meet the conditions above, will choose A.

## Dataset
* predictor variables : income level(top, middle bottom), age, job(jobless or not), sex(male, female)
* target variable : candidate (A or B)

## Code
just made simple classification model using for loops and conditional statements.

## Result
![image](https://user-images.githubusercontent.com/65381957/157922814-07ded0d7-b083-4ae1-867d-9b23819dd677.png)
![image](https://user-images.githubusercontent.com/65381957/157922858-39344f6d-b1ee-4394-bc45-0a2be9b5dd8c.png)


______


# 1주차 과제 : 간단한 후보자(정당) 예측 모델

* 주제 : 투표자들의 개인정보를 이용해서 선호 후보자(또는 정당) 예측

* 분류 혹은 회귀의 방식을 사용해라.
	* -> 나는 분류 방식만을 사용해서 구현.


## 모델을 만드는 방식

* 데이터에서 어떤 패턴을 제안한다.
	* 목표 변수 하나와 예측변수 3개 이상(수치형, 범주형 변수)를 설정한다.
* 패턴에 따라 데이터(표)를 작성한다.
* R언어를 사용하여 그 패턴을 따르는 예측 모델을 작성한다.
* 데이터를 읽고 해당 모델을 적용하여 테스트한다.
* 결과값을 보고 해당 모델의 정확도를 계산한다.

## 내가 설정한 패턴 (소득수준-나이-직장-성별 순서)
* 소득수준이 상인 사람은 무조건 B를 뽑는다.
* 소득수준이 중이고 나이 40 이상의 직장인은 무조건 B를 뽑는다.
* 소득수준이 중이고 나이 40 미만의 직장인 남성은 무조건 B를 뽑는다.
* 수득 수준이 하이고 나이 40 미만의 무직 남성은 무조건 B를 뽑는다.
* 위의 조건에 해당하지 않는 사람들은 모두 A를 뽑는다.

## Dataset
* 예측 변수 : 소득수준 (상, 중, 하), 직업(유직, 무직), 성별(여자, 남자)
* 목표 변수 : 후보자 (A 또는 B)

## 코드
반복문(for)과 조건문(if)를 사용하여 간단한 분류모델을 만들었다.

## 결과
![image](https://user-images.githubusercontent.com/65381957/157922814-07ded0d7-b083-4ae1-867d-9b23819dd677.png)
![image](https://user-images.githubusercontent.com/65381957/157922858-39344f6d-b1ee-4394-bc45-0a2be9b5dd8c.png)
