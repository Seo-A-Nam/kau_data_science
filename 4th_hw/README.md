# 4th Week Assignment - Decision Tree
![3w_tree](https://user-images.githubusercontent.com/65381957/161682187-6cf7246b-cb70-4d7e-b037-d5ec15eca4aa.png)
![lc](https://user-images.githubusercontent.com/65381957/161682309-e2f9fe63-5fff-4487-98ee-e60a1f5c6574.png)

- Data set : 
	https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset
	
(eng.ver)
1. Select target variable
2. Perform data processing
3. EDA : Exploratory Data Analysis

	→ find variable(attribute) that affects accuracy of prediction the most.
4. Select appropriate predictor variable set
5. Data partitioning

	→ seperate data into training / testing data set.
6. Create decision tree model and plot.
	- try to make model using various control parameter value.
		- such as minsplit, minbucket, maxdepth, method, cp ...
		- choose a parameter that shows best performance
7. Determine accuracy of the model
	- choose optimal parameter which maximize accuracy
	
		→ consider the change of tree shape and accuracy, in accordance to type of Split criterion or Pruning(yes or not)
8. Draw Learning Curve of the model
	- apply the optimal parameter as a train control to draw learning curve
		- x-axis : size of the training set
		- y-axis : Accuracy(ROC) of the model.
		
		→ choose proper interval of x-axis line, to show change of the curve

___
(kor.ver)

# 4주차 과제 - 결정 나무(Decision Tree. DT)

1. 목표변수를 선택
2. 데이터 전처리
3. 데이터 탐색 (분류 예측 정확도에 가장 영향력 있는 변수 찾기)
4. 적절한 예측변수 집합 선정
5. 데이터를 목표변수를 기준으로 층화추출

    → 데이터를 학습용, 시험용 데이터셋으로 나누기 위해
    
6. Descision tree 모델 생성 및 플롯
    - rpart 함수의 파라미터 인 minsplit, minbucket, maxdepth, method, cp 등의 여러가지 파라미터 값을 사용하여, 모델 생성 시도
    - 그 중 최고의 성능을  나타내는 파라미터를 선택
7. 모델의 정확도를 측정
    - 정확도를 최대로 하는 최적 파라미터 고르기
        
        → Split criterion의 종류, Pruning 여부를 선택함에 따라 tree의 형태 및 정확도는 어떻게 변화하는 지 살펴 본 뒤 고르자.
        
8. 학습곡선(Learning Curve) 그리기
    - 찾아낸 최적 파라미터를 적용해서, 학습데이터 크기에 대한 학습곡선(Learning Curve)을 그리기.
        - x와 y축 : 각각 학습용 데이터의 크기 및 모델의 정확도.
            
            → 곡선의 변화를 보이기 위하여 x 축에서 적절한 간격을 선택해야 한다.