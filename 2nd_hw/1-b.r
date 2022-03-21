# =========================================================================
# write 1 function that gets each sum of positive value and negative value
# , either in each row or in each column. 
# Row or column can be chosen as a parameter of the function.
# !!! USE APPLY() INSTEAD OF FOR() LOOP AS POSSIBLE !!!
# =========================================================================

## function for the numeric matrix
sum_posneg_b <- function(matrix, dir)
{
	if (dir != 1 && dir != 2) {
		print("[error] invalid direction value.")
		return (matrix)
	}
	mat_pos <- matrix
	mat_neg <- matrix
	# Try NA masking to filter each positive/negative value in given matrix.
	mat_pos[matrix < 0] <- NA
	mat_neg[matrix >= 0] <- NA
	# make sum of each positive/negative vector of each row/column
	pm = apply(mat_pos, dir, sum, na.rm=TRUE)
	nm = apply(mat_neg, dir, sum, na.rm=TRUE)
	# bind positive & negative sum vector to make matrix
	if (dir == 1)
		return (cbind(pm, nm))
	else
	{
		return (rbind(pm, nm))
	}
}


# ==========================================================================

## set matrix
mat <- matrix(data = c(1, -1, 1, -1, 1, 1, -2, 1, 1), nrow = 3, ncol = 3)

## display matrix
cat("============== ORIGINAL MATRIX ===============\n\n")
print(mat)
cat("==============================================\n")

## get return value from made function
cat("sum_posneg_b(matrix, dir = 1)\n\n")
result <- sum_posneg_b(mat, 1)
print(result)
cat("----------------------------------------------\n")
cat("sum_posneg_b(matrix, dir = 2)\n\n")
result <- sum_posneg_b(mat, 2)
print(result)


# Reference 
# https://velog.io/@yummygyudon/R-Indexing-%EC%9C%BC%EB%A1%9C-%EC%9B%90%ED%95%98%EB%8A%94-%EC%A1%B0%EA%B1%B4%EC%9D%98-%EA%B0%92-%EC%B6%94%EC%B6%9C
# https://stackoverflow.com/questions/42821560/how-to-remove-the-negative-values-from-a-data-frame-in-r