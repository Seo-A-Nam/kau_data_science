# 3rd week assignment : Plot data

(Eng ver.)
## output
* DEA
* error rate of classification (cutoff) - histogram
* error rate of  classification (decision boundary) - scatter plot
* Plots
	![image](https://user-images.githubusercontent.com/65381957/159247564-45d5642f-a2aa-4eec-b76c-34f010be7cc7.png)
	![KakaoTalk_Photo_2022-03-21-19-57-27](https://user-images.githubusercontent.com/65381957/159247680-623850c7-0057-46bc-bf7d-19b38f9f1d79.png)

## Dataset source
- https://github.com/omairaasim/machine_learning/blob/master/project_9_predict_weight_sex/weight-height.csv
-  ⚠️ I have mistaken that American data commonly use (inch) and (pound) unit for height and weight. That made me swap the Label of those two in given dataset, because here we use (kg) and (cm).
- So make sure to keep this in mind when watching these repo.

## 1. DEA of data
- make DEA of data
1. overall plot matrix
2. mean and standard-deviation value
3. overall correlation coefficient of each gender

## 2. Make histogram based on single variable - use cut-off
1. Height based classification model.
2. Weight based classification model.
- which model is better? and why?

## 3. Make scatter plot of 2 class in 1 plot.
1. display each point of the class in different color
2. choose your lines of decision boundary and draw.
3. why did you choose that line? 

_______

(Kor ver.)
## 결과값(또는 출력)
* DEA
* 히스토그램에서 cutoff로 분류한 결과의 분류 오차율
* scatter plot에서 결정 경계(직선)으로 분류한 결과의 분류 오차율
* Plots
	![image](https://user-images.githubusercontent.com/65381957/159247564-45d5642f-a2aa-4eec-b76c-34f010be7cc7.png)
	![KakaoTalk_Photo_2022-03-21-19-57-27](https://user-images.githubusercontent.com/65381957/159247680-623850c7-0057-46bc-bf7d-19b38f9f1d79.png)

## Dataset 출처
- https://github.com/omairaasim/machine_learning/blob/master/project_9_predict_weight_sex/weight-height.csv

## 1. Data에 대한 DEA
* 전반적 DEA
* 이 중 특히, 주목해 볼 것
	* 남, 녀 각각 전체 평균치, 표준편자
	* 남, 녀 각각 전체 상관계수
	
## 2. 일변수에 기반한 남녀 분류 모델생성 - cutoff 이용
* 키 기반 분류 모델
* 몸무게 기반 분류 모델
* 두 모델 중 어느 모델이 더 좋은 모델인가?

## 3. 두 변수에 기반한 남녀 분류 모델 생성 - 직선 결정 경계
* 하나의 플롯에 두 클래스의 scatter plot
	두 클래스의 포인트를 각각 다른 색으로 표시
* scatter plot에 직선의 결정 경계 생성 - 눈과 손과 자로...
* 여러가지 직선(기울기, 절편)들 중 왜 그러한 직선을 선택하였는가? 이유
* 오류율은?

## 4. 위의 두 모델을 항공대에 적용하자.

-> 각 집단의 성별 비율을 맞추어 scaling 하여 모델을 만든다.

- 모델을 만들지는 않고 그냥 항공대 성별집단 비율에 맞는 scaling 을 통해 이를 구할 수 있다는 결론만 설명했음.

# Reference (참고한 자료)
(1)
- My team member told me about cov() and describe()

(2)
- http://www.sthda.com/english/wiki/ggplot2-histogram-plot-quick-start-guide-r-software-and-data-visualization
- http://www.sthda.com/english/wiki/ggplot2-add-straight-lines-to-a-plot-horizontal-vertical-and-regression-lines
- https://www.r-bloggers.com/2019/08/find-the-intersection-of-overlapping-histograms-in-r-2/
- https://www.datasciencemadesimple.com/delete-or-drop-rows-in-r-with-conditions-2/
- https://stackoverflow.com/questions/18091721/align-geom-text-to-a-geom-vline-in-ggplot2

(3)
- https://stackoverflow.com/questions/6919025/how-to-assign-colors-to-categorical-variables-in-ggplot2-that-have-stable-mappin
- http://www.sthda.com/english/wiki/ggplot2-add-straight-lines-to-a-plot-horizontal-vertical-and-regression-lines
- https://ggplot2.tidyverse.org/reference/geom_point.html