Central_difference <- function(f, x, h) {
  (f(x + h)-f(x)) / h
}

f <- function(x) {
  x^2
}

Central_difference(f, 2, 0.1)