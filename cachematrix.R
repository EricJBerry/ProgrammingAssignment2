## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

The function below creates a special object which can cache the inverse of itself.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
  x <<- y
  inv <<- NULL
}
        get <- function() x
        setInverse <- function(solveMatrix) inv <<- solveMatrix
        getInverse <- function () inv
       list(set = set, get = get, 
            setInverse = setInverse, 
            getInverse = getInverse)       
}

## Write a short comment describing this function
This code runs the 
          
          
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
        if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
        }
   data <- x$get()
   inv <- solve(data)
   x$settInverse(inv)
   inv
}
