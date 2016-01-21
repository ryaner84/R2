myfunction <- function() {
x <- rnorm(100)
mean(x)
}


MyRyan <- function() {
  x <- rnorm(100)
  mean(x)
}

cube <- function(x, n) {
  x^3
}


f <- function(x) {
  g <- function(y) {
    y + z
  }
  z <- 4
  x + g(x)
}

test <-function(){
  x <- 5
  y <- if(x < 3) {
    NA
  } else {
    10
  }
  
  
  
}
