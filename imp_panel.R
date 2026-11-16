f <- function(x) x^2

a <- 0
b <- 2

midpoint <- (b-a) * f((a+b)/2)

trapezoid <- (b-a)/(f(a)+f(b))

h <- (b-a)/2
simpson13 <- h/3*(f(a)+4*f((a+b)/2) + f(b))

c(midpoint = midpoint,
  trapezoid = trapezoid,
  simpson13 = simpson13)