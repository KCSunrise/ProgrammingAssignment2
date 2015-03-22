## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
HERE IS THE CODE FOR THE INVERSE VECTOR CALCULATION 
WITH DOCUMENTATION

The following functions:
  that can cache its inverse.
makeCacheMatrix<- function(x = numeric()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmean <- function(mean) m <<- mean
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}


}


## Write a short comment describing this function
`cacheSolve`: This function computes the inverse of the special
"matrix" returned by `makeCacheMatrix` above. If the inverse has
-    already been calculated (and the matrix has not changed), then the
-    `cachesolve` should retrieve the inverse from the cache.
+    already been calculated (and the matrix has not changed), then
+    `cacheSolve` should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
  m <- x$getmean()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setmean(m)
  m
}
Computing the inverse of a square matrix can be done with the `solve`
function in R. For example, if `X` is a square invertible matrix, then
makeCacheMatrix <- function(x = matrix()) {
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
