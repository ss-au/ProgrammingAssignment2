## Put comments here that give an overall description of what your
## functions do
##attempting to create an new function to store the inverse of a matrix and cache it to access later

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inverse <- NULL
        set <- function (y) {
                x<<y
                inverse <<- NULL

}
get <- function () x
        setinverse <- function(inv) inverse <<-inv
        getinverse <- function() inverse
        list (set = set,
              get = get, 
              setinverse = setinverse, 
              getinverse = getinverse)

## if the inverse matrix has been calculated then get the one from cachce Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- x$getinverse()
        if (!is.null(inverse)){
                messgage("processing")
                return(inverse)
                }
        matrixa <- x$get()
        inverse <-solve(matrixa, ...)
        x$setinverse(inverse)
        inverse
        }
}
