cacheSolve <- function(x, ...) {
  
  #Checks to see if the inverse has already been cached - if so, it returns that value.
  
  m <- x$getInverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  
  #If the inverse has not been cached (m is NULL), it finds the inverse of the matrix.
  #The inverse if found using the built-in function "solve".
  
  data <- x$get()
  m <- solve(data, ...)
  
  #Now the correct inverse is put into the listed outcome from makeCacheMatrix.
  
  x$setInverse(m)
  m
}