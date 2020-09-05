## Put comments here that give an overall description of what your
## functions do

## The following function creates a special matrix (x) and then proceeds to set the values of the matrix, get the values of the matrix, set the inverse and get the inverse of the matrix. 

makeCacheMatrix <- function(x = matrix()) { 
  j <- NULL
set <- function(y){
  x <<- y
  j <<- NULL
}
get <- function()x
setInverse <- function(inverse) j <<- inverse
getInverse <- function() j 
list(set = set, get = get, 
     setInverse = setInverse, 
     getInverse = getInverse)

}


## The following function computes the inverse of the previous matrix with the established function getInverse(). If the inverse hasn't been calculated yet, the function proceeds to egt the inverse through the setInverse() function.   

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x' 
  j <- x$getInverse()
  if(!is.null(j)){
    message("retrieving data")
    return(j)
  }
  mat <- x$get()
  j <- solve(mat,...)
  x$setInverse(j)
  j
}
