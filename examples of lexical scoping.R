

new_counter <- function() {
        i <- 0
        function() {
                # do something useful, then ...
                i <<- i + 1
                i
        }
}


counter_one <- new_counter()
counter_two <- new_counter()



fortest <- function() {
        mySum <- 0
        for (i in c(1, 2, 3)) {
                mySum <- mySum + i
        }
        mySum
}


power <- function(exponent) {
        function(x) x ^ exponent
}




open.account <- function(total) {
        list(
                deposit = function(amount) {
                        if(amount <= 0)
                                stop("Deposits must be positive!\n")
                        total <<- total + amount
                        cat(amount, "deposited.  Your balance is", total, "\n\n")
                },
                withdraw = function(amount) {
                        if(amount > total)
                                stop("You don't have that much money!\n")
                        total <<- total - amount
                        cat(amount, "withdrawn.  Your balance is", total, "\n\n")
                },
                balance = function() {
                        cat("Your balance is", total, "\n\n")
                }
        )
}