## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function makes a matrix object that can cache its inverse.
## get returns vector x stored in the main function
##set changes the vector stored in the main function
##setmean and getmean store the value in variable m
makeCacheMatrix <- function(x = matrix()) {
m <- NULL
      set <- function(y) {
            x <<- y
            m <<- NULL
      }
      get <- function() x
      setinverse <- function(solve) m <<- solve
      getinverse <- function() m
      list(set = set, get = get,
           setinverse = setinverse,
}


## Write a short comment describing this function
## computes the inverse of the matrix returned by makeCacheMatrix

cacheSolve <- function(x, ...)
	m <- x$getinverse()
      	if(!is.null(m)) {
            message("getting cached data")
            return(m)
      	}
      	data <- x$get()
     	 m <- solve(data, ...)
      	x$setinverse(m)
      	m
}
