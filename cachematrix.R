## makeCacheMatrix is a function that creates a matrix object that can cache its inverse. 
## The objects x and m are initialized, the set function uses the assignment operator to assign values to those objects in the parent environment
## get, setinverse,and getinverse functions are defined. X is not defined in get() so it will be retrieved from parent environment for makeCacheMatrix.
## 

makeCacheMatrix <- function(x = matrix()) {
                    m <- NULL
                    set <- function(y){
                      x <<- y
                      m <<- NULL
                    }
                    get <- function()x
                    setinverse <- function(solve) x <<- solve
                    getinverse <- function()x
                    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}
## to test makeCacheMAtrix, the test case using m1 <- matrix(c(1/2, -1/4, -1, 3/4), nrow=2, ncol=2) was used.m1 returns 
##     [,1]  [,2]
## [1,]  0.50 -1.00
## [2,] -0.25  0.75

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
