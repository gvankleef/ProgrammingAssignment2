z <- 10

##does not modify the global z value
myfun <- function(x){
        z <- x
        print(z)
}

##modify z in function, but not at the global level
myfun0 <- function(x){
        z <- x
        myfun1 <- function(y){
                z <<- (y+1)
        }
        
        myfun1(x)
        print(z)
}

##z is modified in global environment
myfunG <- function(x){
        z <<- x
        print(" z in the global envronment is modified")
}