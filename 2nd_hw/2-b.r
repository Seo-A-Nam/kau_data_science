# =========================================================================
# write function that returns the number of elements
# , which includes particular strings in each row or column.
# Row or column can be chosen as a parameter of the function.
# !!! USE APPLY() INSTEAD OF FOR() LOOP AS POSSIBLE !!!
# =========================================================================

## function for the charactor matrix
count_substr_b <- function(matrix, str, dir) {
	# exception handling
	if (dir != 1 && dir != 2) { 
		print("[error] invalid direction value.")
		return (NULL)
	}
	# use stringr library
	library(stringr)
	tmp <- apply(matrix, 2, str_detect, str) 
	# count TRUE in the given direction
	res <- apply(tmp, dir, sum, na.rm = TRUE) 
	# convert vector to a matrix
	if (dir == 1) {
		res <- matrix(data = res, nrow = nrow(matrix), ncol = 1)
	}
	else if (dir == 2) {
		res <- matrix(data = res, nrow = 1, ncol = ncol(matrix))
	}
	return (res)
}

# ==========================================================================

## set matrix
mat <- matrix(data = c('happy', 'hangout', 'hangover', 'what is happiness',
	'what', 'is', 'me', 'That is me', 'That'), nrow = 3, ncol = 3)
str <- c('what')

## display matrix
cat("============== ORIGINAL MATRIX ===============\n\n")
print(mat)
cat("substring to find :", str[1], "\n\n")
cat("==============================================\n")

## get return value from the function
cat("count_substr_b(matrix, dir = 1)\n\n")
result <- count_substr_b(mat, str, 1)
print(result)
cat("----------------------------------------------\n")
cat("count_substr_b(matrix, dir = 2)\n\n")
result <- count_substr_b(mat, str, 2)
print(result)


# Reference
# https://stackoverflow.com/questions/2190756/how-to-count-true-values-in-a-logical-vector
# https://stackoverflow.com/questions/10128617/test-if-characters-are-in-a-string
# https://www.geeksforgeeks.org/how-to-find-substring-in-r-programming/
# https://intellipaat.com/community/5004/how-to-count-true-values-in-r