## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##Chris's assignment 3 submission... word

makeCacheMatrix <- function(x = matrix()) {
   s <- NULL
   set <- function(y) {
      x <<- y
      s <<- NULL
   }
   get <- function() x
   setsolve <- function(solve) s <<- solve
   getsolve <- function() s
   list(set = set, get = get,
        setsolve = setsolve,
        getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
   s <- x$getsolve()
   if(!is.null(s)) {
      message("getting cached matrix")
      return(s)
   }
   data <- x$get()
   s <- solve(data, ...)
   x$setsolve(s)
   s
}
