## Put comments here that give an overall description of what your
## functions do
##attempting to create an new function to store the inverse of a matrix and cache it to access later

## Write a short comment describing this function

 makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function (y) {
    x <<- y
    inverse <<- NULL
    
  }
  get <- function () x
  setInverse <- function(inverse) inv <<-inverse
  getInverse <- function() inv
  list (set = set,
        get = get, 
        setInverse = setInverse, 
        getInverse = getInverse)

  ## if the inverse matrix has been calculated then get the one from cachce Write a short comment describing this function
  
  cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inv <- x$getInverse()
    if (!is.null(inv)){
      return(inv)
    }
    mat <- x$get()
    inv <-solve(mat, ...)
    x$setInverse(inv)
    inv
  }
}
