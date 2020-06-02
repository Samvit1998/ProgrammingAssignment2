## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##This function will create a cache matrix to store the most recent value of inverse of the matrix created.

makeCacheMatrix <- function(x = matrix()) {
		inv<- NULL
        set <- function(y){
                x <<- y
                inv <<- NULL
        }
        get <- function() {
                x
        }
        setInverse <- function(inverse) {
                inv <<- inverse
        }
        getInverse <- function(){
                inv
        }
        list(set=set, get=get, setInverse= setInverse, getInverse= getInverse)
}


## Write a short comment describing this function
# This function will first check whether the recent inverse value exists in the given code if not then it computes and stores it in 
## the cache and displays it, if a value already exists then it returns the most recent value stored in cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
        if(!is.null(inv)){
                message("getting cached data.................")
                return(inv)
        }
        mat<- x$get()
        inv <- solve(mat,...)
        x$setInverse(mat)
        mat
}
