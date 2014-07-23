makeCacheMatrix <- function(x = matrix()) {
  #initial m
  m <- NULL

  #set x
  set <- function(y) {
    x <<- y
    m <<- NULL
  }

  #return x
  get <- function() x

  #
  setInverse <- function(inverse) m <<- inverse

  getInverse <- function() m

  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

