## Put comments here that give an overall description of what your
## functions do

## basically we create a matrix that self cache in inversa

makeCacheMatrix <- function(x = matrix()) {
  
    volta <- NULL
    set <- function(y) {
      x <<- y
      volta <<- NULL
    }
    get <- function() x
    setinversa <- function(inversa) volta <<- inversa
    getinversa <- function() volta
    list(set = set,
         get = get,
         setinversa = setinversa,
         getinversa = getinversa)
  

}


## This second function calculates the previously created matrix and if already calculated
## should return the cache value. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inversa of 'x'
  
  volta <- x$getinversa()
  if (!is.null(volta)) {
    message("Obteniendo Cache...")
    return(volta)
  }
  mat <- x$get()
  volta <- solve(mat, ...)
  x$setinversa(volta)
  volta
  
}
