## This script will cache the matrix and calculates the inverse of matric
## makeCacheMatrix function1

## Function 1 will cache the matrix data 

makeCacheMatrix <- function(x = matrix()) {
 m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x  ##Gets the matrix data
        setMatrixCache <- function(mat) m <<- mat
        getMatrixCache <- function() m
        list(set = set, get = get,
             setMatrixCache = setMatrixCache,
             getMatrixCache = getMatrixCache)
}


## CacheSolve will calculates the inverse matrix it it not calculated before

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
          m <- x$getMatrixCache()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setMatrixCache(m)
        m    ##returns the inverse matric
}
