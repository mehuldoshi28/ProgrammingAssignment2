## These functions will take input a matrix and create a special matrix and reurn cached inverse matrix


## This will take input a matrix and sub-functions here are used to create special matrix

makeCacheMatrix <- function(x = matrix()) {
j<-NULL
set<-function(y){
  x<<-y
  j<<-NULL
}
get<-function()x
setInverse<-function(inverse) j<<-inverse
getInverse<-function() j
list(set=set,get=get,setInverse= setInverse,getInverse=getInverse)
}


## this function will inverse the special matrix and create a cached inverse matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  j<- x$getInverse()
  if(!is.null(j)){
    message("getting cached data")
    return(j)
  }
  mat<-x$get()
  j<-solve(mat,...)
  x$setInverse(j)
  j
}
