## Get the inverse of a matrix

## Creates a special matrix for getting the inverse

makeCacheMatrix <- function(x = matrix()) {
  
  inverse <- NULL
  set <- function(y) {
    x<<- y
    inverese <<- NULL
    
  }
  get <- function() x
  setinverse <- function (inverse) inverse <<- inverse
  getinverese <- function () inverse
  list ( set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Computes the inverse of the matrix from previous function.

cacheSolve <- function(x, ...) {
  inverse <- x$getinverse()
  if(!is.null(inverse)) {
    message ("getting cached data")
    return(inverse)
  }
  data <- x$get()
  inverse <- inverse(data,...)
  x$setinverse(inverse)
  inverse
  
  ## Return a matrix that is the inverse of 'x'
}
