backward_difference <- function(f, x, h) {
  (f(x)-f(x-h)) / h
}

f <- function(x) {
  x^2
}

backward_difference(f, 2, 0.1)