# =========================================================================
# write 1 function that gets each sum of positive value and negative value
# , either in each row or in each column. 
# Row or column can be chosen as a parameter of the function.
# !!! USE APPLY() INSTEAD OF FOR() LOOP AS POSSIBLE !!!
# =========================================================================

## function for matrix of random numbers
sum_posneg_b <- function(matrix, dir)
{
	mat_pos[matrix < 0] <- NA # filtered positive value in given matrix.
	mat_neg[matrix >= 0] <- NA # filtered negative value in given matrix.
	pm = apply(mat_pos, dir, sum, na.rm=TRUE)
	nm = apply(mat_neg, dir, sum, na.rm=TRUE)
	if (dir == 1)
		return (cbind(pm, nm))
	else if (dir == 2)
	{
		return (rbind(pm, nm))
	}
	else {
		print("[error] invalid direction value.")
	}
}

## set matrix
mat <- matrix(data = c(1, -1, 1, -1, 1, 1, -2, 1, 1), nrow = 3, ncol = 3)
## get return value from made function
result <- sum_posneg_b(mat, 2)
print(result)

# Reference 
# https://velog.io/@yummygyudon/R-Indexing-%EC%9C%BC%EB%A1%9C-%EC%9B%90%ED%95%98%EB%8A%94-%EC%A1%B0%EA%B1%B4%EC%9D%98-%EA%B0%92-%EC%B6%94%EC%B6%9C
# https://stackoverflow.com/questions/42821560/how-to-remove-the-negative-values-from-a-data-frame-in-r