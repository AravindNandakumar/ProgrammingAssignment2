
makeCacheMatrix <- function(x = matrix()) {
  ## x is invertible matrix
  ## function to set matrix
  ## function to get matrix
  ## function to set inverse
  ## function to get inverse
  
inv <- NULL
set <- function(y){
  x <<- y
  inv <<- NULL
}
get <- function()x
setinv <- function(solve)inv<<-solve
getinv <- function()inv
list (set =set, get=get, setinv=setinv, getinv=getinv)
}


## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv<- x$getinv()
## Checking if the inverse is already calculated
if(!is.null(inv)){
    message("getting cached data")
  ## Get inverse from Cache
  return(inv)
}
data <-x$get()
inv<-solve(data,...)
x$setinv(inv)
inv
  }
