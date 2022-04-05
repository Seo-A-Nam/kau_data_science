# 5th Week Assignment - Decision Tree Pruning
- post-pruning
![image](https://user-images.githubusercontent.com/65381957/161830739-74c4a763-f62f-4bb5-b9c7-f8fd5712fc3a.png)
- pre-pruning
![000016](https://user-images.githubusercontent.com/65381957/161830870-ea3605c9-c666-402d-a8f7-51f76653650c.png)
- learning curve (pre-pruning, post-pruning)
![image](https://user-images.githubusercontent.com/65381957/161831177-2c567ca6-d28e-4abd-8342-0715e5b59c2a.png)

(eng.ver)
- Create decision tree applying pre-pruning and post-pruning
	- Compare performance of the models

1. Dataset : kaggle - Fish market
2. EDA (data analysis)
3. Data processing : search missing data and fix it if it exists
4. Pre-pruning : create DT model
	
	a. optimize rpart parameter such as Max treedepth
	
	b. determine a optimal set of parameters
5. Post-pruning : make tree grow to be a full tree, then apply post-pruning to create DT model

	a. etermine a optimal set of parameters to make full tree
	
	b. pruning - optimize cp value.
6. Compare performance of two prediction model(post/pre-pruning)
	- compare each model's Accuracy, Sensitivity, Specificity
7. Show if the model is optimized, using plot or learning curve
	- various learning curve plot
		- x-axis : the object for optimization
		- y-axis : accuracy or error rate
8. Choose one from the models we made, then extract rule sets.
	
	a. use rules function from the rpart.plot package version 3.0 (July 2018)
	
	b. https://stackoverflow.com/questions/36401411/extracting-information-from-the-decision-rules-in-rpart-package/51680932#51680932
	
	c. what is the most important rule among the rules?
	
	- check the ratio of case that the rule covers.
	
	d. what is the most reliable rule among the rules?
	- check the prediction accuracy of the case that the rule is applied.
	

# 5주차 과제 - 결정나무의 가지치기
(kor.ver)

⚠️ 코드의 오류를 수정하여 ppt와 좀 다르게 되었습니다.

그러니 ppt에서의 full-tree 부분은 절대 참고하지 말고, 이 리드미 문서 상단의 plot과 현재 코드에서의 가지치기 parameter를 참고하기를 바랍니다.

- 이과제에서는 사전가지치기와 사후가지치기를 적용하여 결정나무를 생성하고
- 두 가지치기 방법에 대하여 성능 비교를 한다.
- Data 출처 :
    - kaggle - Fish market
 
1. Amazon Mechanical Turk (ppt에 조사한 내용 정리)
	- Amazon Mechanical Turk 란 무엇인가?
2. EDA
	- 데이터에 대하여 간단한 데이터 탐색과정(EDA)을 실행하라.
3. 데이터 전처리
    - 결측치(missing data)에 대하여 조사하고 결측치를 적절히 채워 넣을 것.
4. 사전 가치치기를 적용하여 결정나무 모델 생성 - Pre-pruning

    a. Maxtreedepth 등의 rpart 파라미터를 최적화
    
    b. 파라미터 값의 최적 조합을 결정하라.
    
5. Full tree 로 모델을 성장 시킨 후 사후 가지치기를 적용하여 결정나무 모델 생성 - Post-pruning
    
    a. Full tree 로 모델을 성정 시키기 파라미터를 어떻게 정해야 하겠는가?
    
    b. 가지 치기 - cp를 최적화
    
6. 위에서 생성된 두 예측 모델(사전, 사후 가지치기)의 성능을 비교하라.
    - 각 모델의 정확도, 민감도, 특이도를 비교하라.
7. Plot, Learning curve 등을 이용하여 모델이 최적화되었음을 보일 것.
    - 여러가지 learning curve plot – x 축은 최적화할 대상, y 축은 정확도 또는 에러율
8. 위의 두 모델 중 하나를 선택하여 rule set을 추출한다.
    1. The rpart.plot package version 3.0 (July 2018) 의 rules 함수 이용
    2. [https://stackoverflow.com/questions/36401411/extracting-information-from-the-decision-rules-in-rpart-package/51680932#51680932](https://stackoverflow.com/questions/36401411/extracting-information-from-the-decision-rules-in-rpart-package/51680932#51680932)
    3. 추출된 rule 중 가장 중요한 rule 은 무엇인가? 이 rule 이 적용되는 사례의 비율을 참조
    4. 추출된 rule 중 가장 신뢰도가 높은 rule은 무엇인가? 이 rule 이 적용되는 사례들의 예측 정확도를 참조