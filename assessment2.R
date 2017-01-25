# See README.md for instructions on running the code and output from it
# makeCacheMatrix is a function to store a martix and a cached value of the inverse of the matrix including:
# setMatrix      set the value of a matrix
# getMatrix      get the value of a matrix
# cacheInverse   get the cahced value (inverse of the matrix)
# getInverse     get the cahced value (inverse of the matrix)
# makeCacheMatrix function

makeCacheMatrix <- function(x = matrix()) {   # holds the cached value or NULL if nothing is cached
        invs <- NULL  
        set <- function(y) {   # store a matrix
                x <<- y
                invs <<- NULL
        }
        get <- function() x   # returns the stored matrix
        setInv <- function(inverse) invs <<- inverse  # calculate the inverse 
        getInv <- function() invs   # get the cached value
        list(set = set,
             get = get,
             setInv = setInv,
             getInv = getInv)
}




cacheSolve <- function(x, ...) {    # this function calculates the inverse of a matrix 
        invs <- x$getInv()   # get the cached value
        if(!is.null(invs)) {   # if a cached value exists return it
                message("getting cached data")
                return(invs)
        }
        mat <- x$get()    # or get the matrix, caclulate the inverse and store it
        invs <- solve(mat, ...)
        x$setInv(invs)
        invs
}


