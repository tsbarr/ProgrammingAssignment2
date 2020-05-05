# These functions calculate the inverse of a matrix using the function solve(),
# storing the result in cache, so the calculation doesn't have to be repeated.

## (1) Function that returns a list of 4 functions to set and get from cache
## the matrix of interest and its inverse. The arg 'x' is the matrix of interest
## that can be set directly when this function is called, but it can also be
## set or modified calling the function 'set_matrix' from the list returned. 
## The other three functions in the list will be used by the next function to:
## get_matrix = get the matrix from cache,
## set_inverse = set the inverse to cache after calculating it,
## get_inverse = get the inverse from cache if previously calculated.

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set_matrix <- function(y) {
        browser()
        x   <<- y
        inv <<- NULL
    }
    get_matrix <- function() x
    set_inverse <- function(inverse) {
        inv <<- inverse
    }
    get_inverse <- function() inv
    list(
        set_matrix  = set_matrix,
        get_matrix  = get_matrix,
        set_inverse = set_inverse,
        get_inverse = get_inverse
        )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
