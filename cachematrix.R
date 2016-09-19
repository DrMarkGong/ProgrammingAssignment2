## Put comments here that give an overall description of what your
## functions do

## Return a list with functions which will be called in cacheSolve

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinvert <- function(solve) m <<- solve
        getinvert <- function() m
        list(set = set, get = get,
             setinvert = setinvert,
             getinvert = getinvert)
}


## Call the functions and return a cache if previously calculated and calculate and save if not.

cacheSolve <- function(x, ...) {
    m <- x$getinvert()
    if(!is.null(m)) {
    message("getting cached data")
    return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinvert(m)
    m
}    
        ## Return a matrix that is the inverse of 'x'

