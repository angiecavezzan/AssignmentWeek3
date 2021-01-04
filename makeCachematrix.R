## Put comments here that give an overall description of what your
## functions do

## Cache the inverse of a Matrix


## Write a short comment describing this function

## Creates a special "matrix" object that caches its inverse


makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y){
     x <<- y
      inv <<- NULL
    }  
    get <- function(){x}
    setInverse <- function(inverse){inv <<- inverse}  
    getInverse <- function(){inv}
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}



## Write a short comment describing this function

## Calculates inverse of the matrix returned by makeCacheMatrix


cacheSolve <- function(x, ...){
	inv <- x$getInverse()
	if(!isnull(inv)){
		message("getting cached data")
		return(inv)
	}
	mat <- x$get()
	inv <- solve(mat, ...)
	x$setInverse(inv)
	inv
}

          


   

