##The presented command aims to acquire the set inverse function of the matrix 
##and value of the matrix.
##Also, the get of the value of the matrix and the inverse of the matrix.
##The main purpose of the function is to get the necessary data in a faster operation.

##Below, the lan represents the inverse
##the san represents the overall set of the matrix
##lan is perceived as null


makeCacheMatrix <- function(x = matrix()) {
  
  
  
  lan<-NULL
  
  
  san<-function(y){
    
    x<<-y
    
    lan<<-NULL
    
    
  }
  
  
  get<-function()x
  
  
  setinv<-function(inverse)san<<-inverse
  
  
  getinv<-function(){lan}
  
  
  list(set = set, get = get, setinverse = setinverse, getinverse = getinvserse)
  
  
}


##The presented command is used to calculate the inverse of 'x' 
##which is represnted by the word "lan
##and the cache of the presented data

##The command also used to determine the nullity of the inverse function
## The command is used to examine for the returning of the inverse  value of "lan"



cacheSolve <- function(x, ...) {  
  
  
  lan<-x$getmean()
  
  
  if(!is.null(lan)){ 
    
    message("getting cached data")
    
    return(lan)      
    
  }
  
  
  data <-x$get()
  
  
  lan <-solve(data, ...)
  
  
  x&setinv(lan)
  
  
  lan      
  
}
}

