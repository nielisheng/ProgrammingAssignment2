cacheSolve <- function(x, ...) {
  #first, find out if there is a cached matrix
  m <- x$getInverse()
  
  # if found, then return it
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }

  data <- x$get()
  
  #use solve, a built-in function to get inversed matrix 
  m <- solve(data)
  
  x$setInverse(m)
  
  #Return inversed matrix: m
  m
}
