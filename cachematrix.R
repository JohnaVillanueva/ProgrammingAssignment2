<<<<<<< HEAD
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

cacheSolve <- function(x, ...) {
  g<-x$getmean()
  if(!is.null(g)){
    message("getting cached data")
    return(g)
  }
  data<-x$get()
  g<-solve(data, ...)
  x&setinv(g)
  g      ## Return a matrix that is the inverse of 'x'
}
=======
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
 getinv<-function(){
   inver<-ginv(x)
   inver%%x
 }
 list(set = set, get = get,
  setinverse = setinverse,
  getinverse = getinvserse)
}


## Write a short comment describing this function
##To get the cache data, cacheSolve is used

cacheSolve <- function(x, ...) {
  g<-x$getmean()
  if(!is.null(g)){
    message("getting cached data")
    return(g)
  }
  data<-x$get()
  g<-solve(data, ...)
  x&setinv(g)
  g      ## Return a matrix that is the inverse of 'x'
}
>>>>>>> 261558f58fc1b2c0481bde46e50dfd8b70766d54
