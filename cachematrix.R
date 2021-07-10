

## makeCacheMatrix is composed of set, get, setinverse and getinverse
##This function helps to get and set the inverse function of a matrix
##Also, helps to get and set the value of the matrix
##cacheSolve is use to get the cached data of a dataset
##Overall, the presented function is purposely use to get data on faster operation
makeCacheMatrix <- function(x = matrix()) {
 g<-NULL   #making the g as NULL
 f<-function(y){
         x<<-y
         g<<-NULL
         }
 get<-function()x
 setinv<-function(inverse)f<<-inverse
 getinv<-function(){
        inver<-ginv(x)  #to obtain the inverse function of the matrix
        inver%%x
        }
 list(set = set, get = get,
  setinverse = setinverse,
  getinverse = getinvserse)
}

##To get the cache data, cacheSolve is used
##It uses the command 'solve' to compute the inverse of the 'x'

cacheSolve <- function(x, ...) {  #This function gets the cache data from the presented data
  g<-x$getmean()
  if(!is.null(g)){                   #This function is used to check if the inverse is null
          message("getting cached data")
         return(g)                         #This function returns the inverse value of "g"
  }
  data<-x$get()
  g<-solve(data, ...)
  x&setinv(g)
  g          ## Return a matrix that is the inverse of 'x'
}

