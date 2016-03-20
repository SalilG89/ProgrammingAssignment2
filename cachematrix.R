##Creates a list of functions that 
## 1 get the value of the matrix
## 2 Set the value of the matrix 
## 3 the inverse of the matrix
## 4 set inverse of the matrix 



makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setMatrix <- function(solve) m <<- solve
  getMatrix <- function() m
  list(set = set, get = get,
       setMatrix = setMatrix,
       getMatrix = getMatrix)
  
}


## This functino returns the inverse of a matrix, 
##it calculates it once, if it has already been calculated it will retrieve the value from cache.

cacheSolve <- function(x, ...) {
 
    m <- x$getMatrix()
    if(!is.null(m)) {
      message("Inverse already computed,  retreiving value from cache.")
      return(m)
    }
    matrix <- x$get()
    m <- solve(matrix)
    x$setMatrix(m)
    m
  
  
  
  
}

