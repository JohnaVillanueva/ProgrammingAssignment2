
## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix is composed of set, get, setinverse and getinverse

makeCacheMatrix <- function(x = matrix()) {
 g<-NULL   #making the g as NULL
 f<-function(y){
    x<<-y
    g<<-NULL
 }
 get<-function()x
 setinv<-function(inverse)f<<-inverse
 getinv<-function()g{
   
 }
 list(set = set, get = get,
  setinverse = setinverse,
  getinverse = getinvserse)
}


## Write a short comment describing this function
##To get the cache data, cacheSolve is used

cacheSolve <- function(x, ...) { ##This function gets the cache data from the presented data
  g<-x$getmean()
  if(!is.null(g)){               ##This function is used to check if the inverse is null
    message("getting cached data")
    return(g)                    ##This function returns the inverse value of "g"
  }
  data<-x$get()
  g<-solve(data, ...)
  x&setinv(g)
  g      ## Return a matrix that is the inverse of 'x'
}
