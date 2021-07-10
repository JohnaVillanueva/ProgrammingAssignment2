makeCacheMatrix <- function(x = matrix()) {
 lan<-NULL   #making the g as NULL
 san<-function(y){
         x<<-y
         lan<<-NULL
         }
 get<-function()x
 setinv<-function(inverse)san<<-inverse
 getinv<-function(){lan}
 list(set = set, get = get, setinverse = setinverse, getinverse = getinvserse)
}

##It uses the command 'solve' to compute the inverse of the 'x'

cacheSolve <- function(x, ...) {  #This function gets the cache data from the presented data
  lan<-x$getmean()
  if(!is.null(lan)){                   #This function is used to check if the inverse is null
          message("getting cached data")
         return(g)                         #This function returns the inverse value of "g"
  }
  data <-x$get()
  lan <-solve(data, ...)
  x&setinv(lan)
  lan          ## Return a matrix that is the inverse of 'x'
}

