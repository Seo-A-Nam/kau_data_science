# 2nd week assignment : use apply function

* practice using apply() instead of for()
* bc it's just to help pratice, use rational/proper interpretion or assumption in the stage of progress.

## for matrix of random number
a) write 1 function that gets each sum of positive value and negative value, either in each row or in each column. Row or column can be chosen as a parameter of the function.

ex)
	
	sum_posneg(matrix, dir = 1)
	# dir = 1, 2 means choice of row or col
	# return value is matrix in 2 x n or n x 2 form
<img width="540" alt="스크린샷 2022-03-11 오후 8 49 15" src="https://user-images.githubusercontent.com/65381957/157861841-d0d9815b-7fa8-4106-8f49-7f3eebca83d0.png">


b) write the same function using apply(), possibly without using for() this time.

## for matrix of random char 

a) write function that returns the number of elements, which includes particular strings in each row or column. Row or column can be chosen as a parameter of the function.

b) write the same function using apply(), possibly without using for() this time.

_____

# 2주차 과제 : apply() 함수의 이용

* for()들을 apply()로 대체하여 사용하는 것을 연습
* 연습을 위한 문제이니 합리적, 적절한 해석, 가정을 사용하세요. 

## 임의 수치형 matrix에 대하여
a) 각 행 또는 각 열 에 대하여 양수들의 합과 음수들의 합을 각각 구하는 하나의 함수를 for 문를 사용하여 작성하라. 행, 열은 함수의 파라미터로 선택할 수 있어야 함.

ex)
	
	sum_posneg(matrix, dir = 1)
	# dir = 1, 2 는 각각 행, 열 을 선택
	# 리턴값은 2 x n 또는 n x 2 matrix 임
<img width="540" alt="스크린샷 2022-03-11 오후 8 49 15" src="https://user-images.githubusercontent.com/65381957/157861841-d0d9815b-7fa8-4106-8f49-7f3eebca83d0.png">


b) 위의 함수를 가능한 경우의 for 대신 apply 함수로 대체하여 사용하여 작성하라. 

## 임의의 char형 matrix에 대하여

a) 각 행 또는 열에 대하여 특정 문자열을 포함하는 요소들의 숫자를 벡터 형식으로 리턴 하는 함수를 for 문을 사용하여 작성, 행, 열은 함수의 파라미터로 선택할 수 있어야 함.

b) 위의 함수를 가능한 경우의 for 대신 apply 함수로 대체하여 사용하여 작성하라. 


