# =========================================================================
# write function that returns the number of elements
# , which includes particular strings in each row or column.
# Row or column can be chosen as a parameter of the function.
# !!! USE FOR() LOOP OR OTHER FUNCTIONS !!!
# =========================================================================

## function definition
substr_count_a <- function(matrix, str, dir) {
	res <- c()
	if (dir == 1)
	{
		for (i in 1 : nrow(matrix))
		{
			row <- grepl(str, matrix[i, ]) 
			# get vector of TRUE/FALSE. TRUE means it contains target substring inside.
			res <- rbind(res, length(row[row == TRUE])) 
			# count TRUE elements and add those element to the bottom of the row.
 		}
	}
	else if (dir == 2) {
		for (i in 1 : ncol(matrix))
		{
			col <- grepl(str, matrix[, i])
			# get vector of TRUE/FALSE. TRUE means it contains target substring inside.
			res <- cbind(res, length(col[col == TRUE]))
			# count TRUE elements and add those element to the right edge of the column.
 		}
	}
	else {
		print("[error] invalid direction value.")
	}
	return (res)
}

## set matrix
mat <- matrix(data = c('행복', '행아웃', '행가레', '행복이란 무엇일까요',
	'무엇', '일까요', '나', '나라는 존재', '존재론적 사고'), nrow = 3, ncol = 3)
str <- c('행')
## get return value from the function
result <- substr_count_a(mat, str, 2)
print(result)

# Reference
# https://stackoverflow.com/questions/10128617/test-if-characters-are-in-a-string
# https://www.geeksforgeeks.org/how-to-find-substring-in-r-programming/
# https://intellipaat.com/community/5004/how-to-count-true-values-in-r