##The presented command aims to acquire the necessary data 
##regarding the set and get either the inverse or the value of the matrix
##The main purpose of the function is to get and 
##reserve the necessary data in a faster operation.




makeCacheMatrix <- function(x = matrix()) {
  
  
  
  inv<-NULL
  
  
  set<-function(y){
    
    x<<-y
    
    lan<<-NULL
    
    
  }
  
  
  get<-function()x
  
  
  setinv<-function(inverse)set<<-inverse
  
  
  getinv<-function(){inv}
  
  
  list(set = set, get = get, setinverse = setinverse, getinverse = getinvserse)
  
  
}


##The presented command is operated to evaluate the inverse of command above 
##and reinstate the the cache data of the command above as  there could be an incident
##where an error could occur 
##The command is utilized to determine the nullity of the function of inverse



cacheSolve <- function(x, ...) {  
  
  
  inv<-x$getinverse()
  
  
  if(!is.null(inverse)){ 
    
    message("getting cached data")
    
    return(inv)      
    
  }
  
  
  data <-x$get()
  
  
  inv <-solve(mat, ...)
  
  
  x&setinv(inv)
  
  
  inv      
  
}


