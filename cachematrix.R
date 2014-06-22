## These 2 functions will take a given matrix, calculate the inverse
## an store it on a new object. If the original matrix remains the same,
## the second function will read the inverse matrix from the cache,
## avoiding the calculation time of recomputing it again.

## First function: "makeCacheMatrix.R". Compromised of a list of 4 functions
## for getting and setting the values of the matrix and its inverse.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinv <- function(solve) inv <<- solve
  getinv <- function() inv
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
