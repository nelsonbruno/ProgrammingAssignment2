## Put comments here that give an overall description of what your
## functions do

## these functions can cache the inverse of a matrix

## Write a short comment describing this function
##is function creates a matrix object and can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) inv <<- solveMatrix
  getInverse <- function() inv
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
## this function can calculate the inverse of the matrix returned by function above

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x']
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setInverse(inv)
  inv    
}
