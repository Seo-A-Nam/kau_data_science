# =========================================================================
# write function that returns the number of elements
# , which includes particular strings in each row or column.
# Row or column can be chosen as a parameter of the function.
# !!! USE APPLY() INSTEAD OF FOR() LOOP AS POSSIBLE !!!
# =========================================================================

## function definition
substr_count_b <- function(matrix, str, dir) {
	if (dir != 1 && dir != 2) { # exception handling
		print("[error] invalid direction value.")
		return (NULL)
	}
	library(stringr) # use stringr library
	tmp <- apply(matrix, 1, str_detect, str) # keep the direction consistent.
	res <- apply(tmp, dir, sum, na.rm = TRUE) # count TRUE according in the given direction
	return (res)
}

## set matrix
mat <- matrix(data = c('행복', '행아웃', '행가레', '행복이란 무엇일까요',
	'무엇', '일까요', '나', '나라는 존재', '존재론적 사고'), nrow = 3, ncol = 3)
str <- c('행')
## get return value from the function
result <- substr_count_b(mat, str, 2)
print(result)

# Reference
# https://stackoverflow.com/questions/2190756/how-to-count-true-values-in-a-logical-vector
# https://stackoverflow.com/questions/10128617/test-if-characters-are-in-a-string
# https://www.geeksforgeeks.org/how-to-find-substring-in-r-programming/
# https://intellipaat.com/community/5004/how-to-count-true-values-in-r