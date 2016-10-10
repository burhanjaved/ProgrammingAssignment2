## The following pair of functions cache the inverse of a matrix with the assumption that the matrix given is inverserable 


## makecacheMartix creates a special "matrix" object that can cache its inverse.

## set value of the matrix 
## get value of the matrix
## set inverse of the matrix
## get inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {

        i <- NULL
	
	set <- function(y)
	{
		x <<- y
		i <<- NULL
	}
	
	get <- function() x
	setInverse <- function(inverse) i <<- inverse 
	getInverse function() i
	list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


##cacheSolve compute the inverse of the special "matrix" created with the makeCacheMatrix function.
##This function first checks to see if the inverse has already been computed.
##If so, it gets the mean from the cache and skips the computation 		
##Otherwise, it compute inverse of the data by using solve function and sets the value of the inverse  
## matrix in the cache via the setmean function

##Return a matrix that is the inverse of 'x'		
cacheSolve <- function(x, ...) {
       
	i <- x$getInverse()
	if(!is.null(i))
	{
		message("getting cached data")
		return(i)
	}
	data <- x$get()
	i <- solve(data, ...)
	x$setInverse(i)
	i
}
}
