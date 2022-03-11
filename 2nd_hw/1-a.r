# =========================================================================
# write 1 function that gets each sum of positive value and negative value
# , either in each row or in each column. 
# Row or column can be chosen as a parameter of the function.
# !!! USE FOR() LOOP OR OTHER FUNCTIONS !!!
# =========================================================================

## function for matrix of random numbers
sum_posneg_a <- function(matrix, dir) {
	mat1 <- matrix(nrow = nrow(matrix), ncol = 2)
	mat2 <- matrix(nrow = 2, ncol = ncol(matrix))
	# sum of (positive value, negative value) on each row
	if (dir == 1)
	{
		for (i in 1 : nrow(matrix))
		{
			mat1[i, 1] = sum(matrix[i, matrix[i, ] >= 0])
			mat1[i, 2] = sum(matrix[i, matrix[i, ] < 0])
		}
		return (mat1)
	}
	# sum of (positive value, negative value) on each column
	else if (dir == 2) {
		for (i in 1 : ncol(matrix))
		{
			mat2[1, i] = sum(matrix[matrix[, i] >= 0, i])
			mat2[2, i] = sum(matrix[matrix[, i] < 0, i])
		}
		return (mat2)
	}
	## error message : when dir is neither 1 nor 2
	else
	{
		print("[error] invalid direction value.")
	}
	return (matrix)
}

## set matrix
mat <- matrix(data = c(1, -1, 1, -1, 1, 1, -2, 1, 1), nrow = 3, ncol = 3)
## get return value from made function
result <- sum_posneg_a(mat, 1)
print(result)

# Reference
# https://stackoverflow.com/questions/30156684/r-sum-positive-values-and-sum-negative-values