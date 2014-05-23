makeCacheMatrix <- function(x = numeric()) {
  
  #This function creates a special "matrix" object that can cache its inverse.
  
  m <- NULL           #sets the inverse matrix to a Null value.  (No inverse has
                      #been calculated yet.)
  
  set <- function(y) {
                      #makes sure that the matrix and a placeholder for the inverse
                      #are available to all functions called.
    x <<- y
    m <<- NULL
  }
  
  #The original matrix
  get <- function() x
  
  #making the inverse available to the other functions
  setInverse <- function(solve) m <<- solve
  
  #holding the inverse
  getInverse<- function() m
  
  #Create the output of makeCacheMatrix - a list with the output of the 4 functions (subroutines) run above
  #within the this function
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}