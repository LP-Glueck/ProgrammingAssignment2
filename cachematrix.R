## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## We are going to create the special 'matrix' object which will also cache its inverse
	## x = an invertible matrix
	## this function will return a function result to:
		## set the matrix 
		## get the matrix 
		## set the inverse
		## then get the inverse

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(y) {
		x <<- y
		inv <<- NULL
	}
	get <- function() x
	setinv <- function(inv) inv <<- inverse 
	getinv <- function() inv
	list(set = set, get = get, 
		setinv = setinv, 
		getinv = getinv)
}


## Write a short comment describing this function
## This part computes the inverse of the special matrix from above
## if the inverse is also created, then the funciton should find the inverse from the cache
## in the end, it should return an inverse of a matrix, no matter if it was already cached or not. 

cacheSolve <- function(x, ...) {
        	## x is the output of makecachematrix()
		## Return a matrix that is the inverse of 'x' (input to first function)
	inv <- x$getinv()
	if(!is.null(inv)) {
		message("getting cached data")
		return(inv)
	}
		## if the inverse is already made, then get from cahce and skip the calculations
	matr <- x$get()
	inv <- solve(matr, ...)
	x$setinv(inv)
	return(inv)
}


  git config --global user.email "liam.glueck@gmail.com"
  git config --global user.name "LP-Glueck"
