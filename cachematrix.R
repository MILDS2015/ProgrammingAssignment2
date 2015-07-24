## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

 invert <- NULL
        
        set <- function(y){
                orig <<- y  
                # ensures that the value is set lexically to the formal argument
                invert <<- null                  
                # ensures that the value is set lexically to the informal argument invert
        }
        
        get <- function(){ orig }
        
        setinvert <- function(invert){
                invert <<- invert     
                # ensures that the value is set lexically to the informal argument invert
        }
        
        getinvert <- function(){ invert}
        
        list(set = set, get = get,
             setinvert = setinvert,
             getinvert = getinvert)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		 inverse <- x$getinvert()
        
        if(!is.null(inverse)){
                message("getting cached data")
                return(inverse)
        }
        
        inverse <- solve(x$get())
        
        x$setinvert(inverse)
        inverse
}
