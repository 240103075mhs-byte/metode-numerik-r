trapezoid_comp <- function(f, a, b, n){
  h <- (b - a)/n
  x <- seq(a, b, length.out = n + 1)
  y <- f(x)
  
  h/2 * (y[1] + 2*sum(y[2:n])+y[n+1])
}

f <- function(x) x^2

trapezoid_comp(f, 0, 2, 4)